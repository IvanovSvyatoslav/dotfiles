return {
  "mason-org/mason.nvim",
  opts = function(_, opts)
    table.insert(opts.ensure_installed, "google-java-format")
    table.insert(opts.ensure_installed, "xmlformatter")
    table.insert(opts.ensure_installed, "ktlint")
    table.insert(opts.ensure_installed, "sleek")
    table.insert(opts.ensure_installed, "postgrestools")
  end,
}
