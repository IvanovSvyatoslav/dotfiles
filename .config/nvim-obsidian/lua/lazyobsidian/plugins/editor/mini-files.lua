return {
  'echasnovski/mini.files',
  version = '*',
  lazy = false,
  keys = {
    {
      '<leader>e',
      function()
        require('mini.files').open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = 'Open file [E]xplorer',
    },
  },
  config = function(_, opts)
    require('mini.files').setup(opts)
  end,
}
