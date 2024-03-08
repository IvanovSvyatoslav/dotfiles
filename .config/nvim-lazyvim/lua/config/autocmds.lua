-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.api.nvim_create_autocmd("VimEnter", {
--   desc = "Auto select virtualenv Nvim open",
--   pattern = "*",
--   callback = function()
--     -- local venv = vim.fn.findfile("pyproject.toml", vim.fn.getcwd() .. "*")
--     print("Trying to load venv")
--     print("It is")
--     print(venv)
--     if venv ~= "" then
--       print("Loaded venv")
--       require("venv-selector").retrieve_from_cache()
--     end
--   end,
--   once = true,
-- })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*compose*.y?ml" },
  callback = function()
    vim.bo.filetype = "yaml.docker-compose"
  end,
})
