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
      require('which-key').register {
        ['<leader>t'] = { name = '[T]ext', _ = 'which_key_ignore' },
        ['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
        ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[W]indow', _ = 'which_key_ignore' },
        ['<leader>o'] = { name = '[O]bsidian', _ = 'which_key_ignore' },
        ['<leader>u'] = { name = '[U]I', _ = 'which_key_ignore' },
        [']'] = { name = 'Next', _ = 'which_key_ignore' },
        ['['] = { name = 'Prev', _ = 'which_key_ignore' },
        ['<leader>q'] = { name = '[Q]uit', _ = 'which_key_ignore' },
        ['g'] = { name = '[G]oto', _ = 'which_key_ignore' },
        ['z'] = { name = '[F]old', _ = 'which_key_ignore' },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
