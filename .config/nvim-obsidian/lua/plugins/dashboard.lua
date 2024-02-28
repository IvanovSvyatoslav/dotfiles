return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local logo = [[
    .d8888. d88888b  .o88b.  .d88b.  d8b   db d8888b. 
    88'  YP 88'     d8P  Y8 .8P  Y8. 888o  88 88  `8D 
    `8bo.   88ooooo 8P      88    88 88V8o 88 88   88 
      `Y8b. 88~~~~~ 8b      88    88 88 V8o88 88   88 
    db   8D 88.     Y8b  d8 `8b  d8' 88  V888 88  .8D 
    `8888Y' Y88888P  `Y88P'  `Y88P'  VP   V8P Y8888D' 
                                                      
                                                      
    d8888b. d8888b.  .d8b.  d888888b d8b   db         
    88  `8D 88  `8D d8' `8b   `88'   888o  88         
    88oooY' 88oobY' 88ooo88    88    88V8o 88         
    88~~~b. 88`8b   88~~~88    88    88 V8o88         
    88   8D 88 `88. 88   88   .88.   88  V888         
    Y8888P' 88   YD YP   YP Y888888P VP   V8P         
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"
    opts.config.header = vim.split(logo, "\n")
  end,
}
