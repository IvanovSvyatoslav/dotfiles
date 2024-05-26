local function createNoteWithTemplate()
  local obsidian = require('obsidian').get_client()
  local utils = require 'obsidian.util'

  -- prevent Obsidian.nvim from injecting it's own frontmatter table
  obsidian.opts.disable_frontmatter = true

  -- prompt for note title
  -- @see: borrowed from obsidian.command.new
  local note
  local title = utils.input 'Enter title or path (optional): '
  if not title then
    return
  elseif title == '' then
    title = nil
  end

  note = obsidian:create_note { title = title, no_write = true }

  if not note then
    return
  end
  local picker = obsidian:picker()
  if not picker then
    return
  end

  -- open new note in a buffer
  obsidian:open_note(note, { sync = true })

  picker:find_templates {
    callback = function(path)
      obsidian:write_note_to_buffer(note, { template = path })
      -- hack: delete empty lines before frontmatter; template seems to be injected at line 2
      vim.api.nvim_buf_set_lines(0, 0, 1, false, {})
      obsidian.opts.disable_frontmatter = false
    end,
  }
end
return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter',
  },
  opts = {
    workspaces = {
      {
        name = 'Thoughts',
        path = '~/vaults/Thoughts',
      },
    },
    -- Optional, set to true if you use the Obsidian Advanced URI plugin.
    -- https://github.com/Vinzent03/obsidian-advanced-uri
    use_advanced_uri = true,
    -- Optional, set to true to force ':ObsidianOpen' to bring the app to the foreground.
    open_app_foreground = true,
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = 'Ежедневные заметки',
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = '%d.%m.%y',
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = '',
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = 'Ежедневная заметка.md',
    },
    -- Optional, customize how note IDs are generated given an optional title.
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will be given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      local suffix = ''
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        return title
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. '-' .. suffix
    end,
    -- Optional, alternatively you can customize the frontmatter data.
    ---@return table
    note_frontmatter_func = function(note)
      -- Add the title of the note as an alias.
      local out = { aliases = note.aliases, tags = note.tags }

      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end

      return out
    end,
    -- Optional, configure key mappings. These are the defaults. If you don't want to set any keymappings this
    -- way then set 'mappings = {}'.
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ['gf'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Smart action depending on context, either follow link or toggle checkbox.
      ['<cr>'] = {
        action = function()
          return require('obsidian').util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      },
    },
    -- Optional, for templates (see below).
    templates = {
      subdir = 'Шаблоны',
      date_format = '%d.%m.%y',
      time_format = '%H:%M',
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {
        ['date:YYYY-MM-DD'] = function()
          return os.date('%Y-%m-%d', os.time())
        end,
        ['date:DD MMMM, dddd'] = function()
          return os.date('%d %B, %A', os.time())
        end,
      },
    },
    -- Specify how to handle attachments.
    attachments = {
      -- The default folder to place images in via `:ObsidianPasteImg`.
      -- If this is a relative path it will be interpreted as relative to the vault root.
      -- You can always override this per image by passing a full path to the command instead of just a filename.
      img_folder = 'assets/images',
    },
    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
    -- URL it will be ignored but you can customize this behavior here.
    ---@param url string
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.fn.jobstart { 'open', url } -- Mac OS
      -- vim.fn.jobstart({"xdg-open", url})  -- linux
    end,
  },
  keys = {
    {
      '<leader>tt',
      function()
        return require('obsidian').util.toggle_checkbox()
      end,
      { buffer = true },
      desc = '[T]oggle checkbox',
    },
    {
      '<leader> ',
      '<cmd>ObsidianQuickSwitch<CR>',
      desc = 'Search (or create) obsidian notes',
    },
    {
      '<leader>sn',
      '<cmd>ObsidianQuickSwitch<CR>',
      desc = '[S]earch (or create) obsidian [N]otes',
    },
    -- {
    --   '<leader>/',
    --   '<cmd>ObsidianSearch<CR>',
    --   desc = "Search for note's content",
    -- },
    {
      '<leader>sc',
      '<cmd>ObsidianSearch<CR>',
      desc = "[S]earch for note's [C]ontent",
    },
    {
      '<leader>ob',
      '<cmd>ObsidianBacklinks<CR>',
      desc = 'List of [B]acklinks to note',
    },
    {
      '<leader>oB',
      '<cmd>ObsidianLinks<CR>',
      desc = 'List of [L]inks in the note',
    },
    {
      '<leader>oT',
      '<cmd>ObsidianTags<CR>',
      desc = 'List of [T]ag occurrencies',
    },
    {
      '<leader>ot',
      '<cmd>ObsidianToday<CR>',
      desc = "[T]oday's daily note",
    },
    {
      '<leader>oy',
      '<cmd>ObsidianYesterday<CR>',
      desc = "[Y]esterday's day daily note",
    },
    {
      '<leader>od',
      '<cmd>ObsidianDailies -31 <CR>',
      desc = 'List of [D]aily notes',
    },
    {
      '<leader>oi',
      '<cmd>ObsidianTemplate<CR>',
      desc = '[I]nsert template',
    },
    {
      '<leader>oe',
      '<cmd>ObsidianExtractNote<CR>',
      mode = { 'x' },
      desc = '[E]xtract selection to new note',
    },
    {
      '<leader>op',
      '<cmd>ObsidianPasteImg<CR>',
      desc = '[P]aste image from clipboard',
    },
    {
      '<leader>oc',
      createNoteWithTemplate,
      desc = '[C]reate note from template',
    },
    {
      '<leader>or',
      '<cmd>ObsidianRename<CR>',
      desc = '[R]ename current note or reference',
    },
    {
      '<leader>oo',
      '<cmd>ObsidianOpen<CR>',
      desc = 'Open the note in [O]bsidian',
    },
    {
      '<leader>ow',
      '<cmd>ObsidianWorkspace<CR>',
      desc = 'Switch to another [W]orkspace',
    },
    {
      '<leader>ol',
      '<cmd>ObsidianLink<CR>',
      mode = { 'x' },
      desc = '[L]ink visual selection to a note',
    },
    {
      '<leader>oL',
      '<cmd>ObsidianLinkNew<CR>',
      mode = { 'x' },
      desc = 'Create new note and [L]ink selection to it',
    },
    {
      '<leader>oo',
      '<cmd>ObsidianOpen<CR>',
      desc = 'Open the note in [O]bsidian',
    },
  },
}
