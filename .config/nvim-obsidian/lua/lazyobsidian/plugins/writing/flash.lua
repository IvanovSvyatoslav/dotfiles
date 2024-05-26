return {
  -- Flash enhances the built-in search functionality by showing labels
  -- at the end of each match, letting you quickly jump to a specific
  -- location.
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    vscode = true,
    ---@type Flash.Config
    opts = {
      -- labels = "asdfghjklqwertyuiopzxcvbnm",
      labels = 'фывапролдйцукенгшщзячсмить',
    },
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "[R]emote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
    -- config = function()
    --   local Hacks = require 'flash.hacks'
    --   local ESC = require('flash.util').ESC
    --   require('flash.util')['get_char'] = function()
    --     Hacks.setcursor()
    --     vim.cmd 'redraw'
    --     local ok, ret = pcall(vim.fn.getcharstr)
    --     local translatedRet = require('langmapper.utils').translate_keycode(ret, 'default', 'ru')
    --     return ok and ret ~= ESC and translatedRet or nil
    --   end
    --   require('flash').setup()
    -- end,

    -- function M.get_char()
    -- Hacks.setcursor()
    -- vim.cmd("redraw")
    -- local ok, ret = pcall(vim.fn.getcharstr)
    -- return ok and ret ~= M.ESC and ret or nil
    -- end
  },

  -- Flash Telescope config
  {
    'nvim-telescope/telescope.nvim',
    optional = true,
    opts = function(_, opts)
      local function flash(prompt_bufnr)
        require('flash').jump {
          pattern = '^',
          label = { after = { 0, 0 } },
          search = {
            mode = 'search',
            exclude = {
              function(win)
                return vim.bo[vim.api.nvim_win_get_buf(win)].filetype ~= 'TelescopeResults'
              end,
            },
          },
          action = function(match)
            local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
            picker:set_selection(match.pos[1] - 1)
          end,
        }
      end
      opts.defaults = vim.tbl_deep_extend('force', opts.defaults or {}, {
        mappings = {
          n = { s = flash },
          i = { ['<c-s>'] = flash },
        },
      })
    end,
  },
}
