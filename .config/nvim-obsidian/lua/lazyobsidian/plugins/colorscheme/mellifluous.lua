return {
  'ramojus/mellifluous.nvim',
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v1 comes out)
  config = function()
    require('mellifluous').setup {} -- optional, see configuration section.
  end,
}
