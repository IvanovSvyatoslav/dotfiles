local opts = {
  create_keymaps = false,
  notify_on_switch = false,
}

return {
  'andrewferrier/wrapping.nvim',
  config = function()
    require('wrapping').setup(opts)
  end,
}
