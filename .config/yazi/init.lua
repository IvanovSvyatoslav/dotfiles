require("zoxide"):setup({
	update_db = true,
})
require("duckdb"):setup()
require("relative-motions"):setup({ show_numbers = "relative_absolute", enter_mode = "first" })
