return {
  {
    "lukas-reineke/cmp-under-comparator",
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      opts.mapping["<CR>"] = nil

      local compare = require("cmp.config.compare")
      -- table.insert(opts.sorting.comparators, require "cmp-under-comparator".under)
      opts.sorting.comparators = {
        compare.offset,
        compare.exact,
        -- compare.scopes,
        compare.score,
        require("cmp-under-comparator").under,
        compare.recently_used,
        compare.locality,
        compare.kind,
        -- compare.sort_text,
        compare.length,
        compare.order,
      }
    end,
  },
}
