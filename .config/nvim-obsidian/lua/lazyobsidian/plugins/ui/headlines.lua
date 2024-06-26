return {
  'lukas-reineke/headlines.nvim',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  opts = {},
  config = function(_, opts)
    -- PERF: schedule to prevent headlines slowing down opening a file
    vim.schedule(function()
      require('headlines').setup(opts)
      require('headlines').refresh()
    end)
  end,
}
