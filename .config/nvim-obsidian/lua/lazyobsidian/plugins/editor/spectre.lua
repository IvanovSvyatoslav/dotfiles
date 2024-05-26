return {
  'nvim-pack/nvim-spectre',
  build = false,
  cmd = 'Spectre',
  opts = { open_cmd = 'noswapfile vnew' },
    -- stylua: ignore
    keys = {
      { "<leader>rr", function() require("spectre").toggle() end, desc = "[R]eplace in vault" },
      { "<leader>rw", function() require("spectre").open_visual({select_word=true}) end, desc = "[R]eplace selected word in vault" },
      { "<leader>rw", mode={'x'}, function() require("spectre").open_visual() end, desc = "[R]eplace selected word in vault" },
      { "<leader>rf", function() require("spectre").open_file_search({select_word=true}) end, desc = "[R]eplace selected word in file" },
    },
}
