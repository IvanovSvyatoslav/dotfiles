-- NOTE: Plugins can also be configured to run lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      -- vim.o.timeout = true

      local lmu = require 'langmapper.utils'
      local view = require 'which-key.view'
      local execute = view.execute

      -- wrap `execute()` and translate sequence back
      view.execute = function(prefix_i, mode, buf)
        -- Translate back to English characters
        prefix_i = lmu.translate_keycode(prefix_i, 'default', 'ru')
        execute(prefix_i, mode, buf)
      end
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').add {
        { '<leader>b', group = '[B]uffer' },
        { '<leader>b_', hidden = true },
        { '<leader>o', group = '[O]bsidian' },
        { '<leader>o_', hidden = true },
        { '<leader>q', group = '[Q]uit' },
        { '<leader>q_', hidden = true },
        { '<leader>r', group = '[R]ename' },
        { '<leader>r_', hidden = true },
        { '<leader>s', group = '[S]earch' },
        { '<leader>s_', hidden = true },
        { '<leader>t', group = '[T]ext' },
        { '<leader>t_', hidden = true },
        { '<leader>u', group = '[U]I' },
        { '<leader>u_', hidden = true },
        { '<leader>w', group = '[W]indow' },
        { '<leader>w_', hidden = true },
        { '[', group = 'Prev' },
        { '[_', hidden = true },
        { ']', group = 'Next' },
        { ']_', hidden = true },
        { 'g', group = '[G]oto' },
        { 'g_', hidden = true },
        { 'z', group = '[F]old' },
        { 'z_', hidden = true },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
