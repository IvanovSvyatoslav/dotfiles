return {
  'kylechui/nvim-surround',
  version = '*', -- Use for stability; omit to use `main` branch for the latest features
  event = 'VeryLazy',
  config = function()
    require('nvim-surround').setup {
      surrounds = {
        l = {
          add = { '[[', ']]' },
          -- delete = '^%[%[(.-)%]%]$',
          find = function()
            local config = require 'nvim-surround.config'
            return config.get_selection { motion = 'a]' }
          end,
          delete = '^(..)().-(..)()$',
        },
        L = {
          add = { '**', '**' },
          -- delete = '^%[%[(.-)%]%]$',
          find = function()
            local config = require 'nvim-surround.config'
            return config.get_selection { motion = 'a*' }
          end,
          delete = '^(..)().-(..)()$',
        },
      },
      -- Configuration here, or leave empty to use defaults
    }
  end,
}
