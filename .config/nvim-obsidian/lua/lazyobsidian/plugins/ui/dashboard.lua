return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      shortcut_type = 'number',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            desc = ' Today',
            group = 'Label',
            action = 'ObsidianToday',
            key = 'f',
          },
          {
            desc = ' QuickSwitch',
            group = 'DiagnosticHint',
            action = 'ObsidianQuickSwitch',
            key = 'd',
          },
          {
            desc = '󰸗 Month',
            group = 'Number',
            action = 'ObsidianDailies',
            key = 's',
          },
        },
        packages = { enable = false }, -- show how many plugins neovim loaded
        project = { enable = false },
        -- Fix: doesn't work with russian letters
        mru = { cwd_only = false },
        footer = { '', '🚀 God save MASLO.digital!' },
        -- footer = '󱁖 May MASLO.digital thrive and prosper!',
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
