return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    local home = vim.fn.expand("$HOME")
    require("chatgpt").setup({
      api_key_cmd = "cat " .. home .. "/.secrets/openai_personal_api_key.txt",
      openai_params = {
        model = "gpt-4o",
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 4096,
        temperature = 0,
        top_p = 1,
        n = 1,
      },
      openai_edit_params = {
        model = "gpt-4o",
        frequency_penalty = 0,
        presence_penalty = 0,
        temperature = 0,
        max_tokens = 4096,
        top_p = 1,
        n = 1,
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
