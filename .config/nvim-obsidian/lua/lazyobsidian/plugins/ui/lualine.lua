local function wordcount()
  return tostring(vim.fn.wordcount().words) .. ' words'
end

local function readingtime()
  return tostring(math.ceil(vim.fn.wordcount().words / 200.0)) .. ' min'
end

local function is_markdown()
  return vim.bo.filetype == 'markdown' or vim.bo.filetype == 'asciidoc'
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      globalstatus = true,
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'filename' },
      lualine_c = {},

      lualine_x = {
        { 'progress', separator = ' ', padding = { left = 1, right = 0 } },
        { 'location', padding = { left = 0, right = 1 } },
      },
      lualine_y = {
        { wordcount, cond = is_markdown },
        { readingtime, cond = is_markdown },
      },
      lualine_z = {
        function()
          return ' ' .. os.date '%R'
        end,
      },
    },
  },
}
