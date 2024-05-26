return {
  enabled = false,
  'echasnovski/mini.surround',
  keys = function(_, keys)
    -- Populate the keys based on the user's options
    local plugin = require('lazy.core.config').spec.plugins['mini.surround']
    local opts = require('lazy.core.plugin').values(plugin, 'opts', false)
    local mappings = {
      { opts.mappings.add, desc = '[A]dd Surrounding', mode = { 'n', 'v' } },
      { opts.mappings.delete, desc = '[D]elete Surrounding' },
      { opts.mappings.find, desc = '[F]ind Right Surrounding' },
      { opts.mappings.find_left, desc = '[F]ind Left Surrounding' },
      -- { opts.mappings.highlight, desc = 'Highlight Surrounding' },
      { opts.mappings.replace, desc = '[R]eplace Surrounding' },

      { '<leader>tb', '<leader>saiw*', { desc = 'Make word [B]old' } },
      -- { opts.mappings.update_n_lines, desc = 'Update N`MiniSurround.config.n_lines`' },
    }
    mappings = vim.tbl_filter(function(m)
      return m[1] and #m[1] > 0
    end, mappings)
    return vim.list_extend(mappings, keys)
  end,
  opts = {
    mappings = {
      add = '<leader>sa', -- Add surrounding in Normal and Visual modes
      delete = '<leader>sd', -- Delete surrounding
      find = '<leader>sf', -- Find surrounding (to the right)
      find_left = '<leader>sF', -- Find surrounding (to the left)
      -- highlight = '<leader>sh', -- Highlight surrounding
      replace = '<leader>sr', -- Replace surrounding
      -- update_n_lines = '<leader>sn', -- Update `n_lines`
    },
  },
}
