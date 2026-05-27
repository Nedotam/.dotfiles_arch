return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#292323",
        dark_bg    = "#1f1a1a",
        darker_bg  = "#151212",
        lighter_bg = "#3e3939",

        fg         = "#dcd6d6",
        dark_fg    = "#a5a1a1",
        light_fg   = "#e1dcdc",
        bright_fg  = "#e5e0e0",
        muted      = "#877878",

        red        = "#a97070",
        yellow     = "#a9a970",
        orange     = "#b68585",
        green      = "#70a970",
        cyan       = "#70a9a9",
        blue       = "#7070a9",
        purple     = "#a970a9",
        brown      = "#6d5050",

        bright_red    = "#be8d8d",
        bright_yellow = "#bebe8d",
        bright_green  = "#8dbe8d",
        bright_cyan   = "#8dbebe",
        bright_blue   = "#8d8dbe",
        bright_purple = "#be8dbe",

        accent               = "#7070a9",
        cursor               = "#dcd6d6",
        foreground           = "#dcd6d6",
        background           = "#292323",
        selection             = "#3e3939",
        selection_foreground = "#dcd6d6",
        selection_background = "#3e3939",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
