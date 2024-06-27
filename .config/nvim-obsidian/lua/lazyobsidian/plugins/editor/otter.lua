return {
  'jmbuhr/otter.nvim',
  dev = false,
  dependencies = {
    {
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
      'hrsh7th/nvim-cmp',
    },
  },
  opts = {
    -- lsp = {},
    buffers = {
      set_filetype = true,
      write_to_disk = false,
    },
    handle_leading_whitespace = true,
  },
}
