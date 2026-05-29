return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#232829",
        dark_bg    = "#1a1e1f",
        darker_bg  = "#121415",
        lighter_bg = "#393e3e",

        fg         = "#d6dcda",
        dark_fg    = "#a1a5a4",
        light_fg   = "#dce1e0",
        bright_fg  = "#e0e5e3",
        muted      = "#788387",

        red        = "#a78181",
        yellow     = "#b3b393",
        orange     = "#b49494",
        green      = "#8aad8a",
        cyan       = "#adc0c7",
        blue       = "#9eaeb8",
        purple     = "#c0a5c0",
        brown      = "#6c5959",

        bright_red    = "#ceb6b6",
        bright_yellow = "#d5d5c1",
        bright_green  = "#bdd3bd",
        bright_cyan   = "#cbd8dd",
        bright_blue   = "#c6d0d6",
        bright_purple = "#dac8da",

        accent               = "#9eaeb8",
        cursor               = "#d6dcda",
        foreground           = "#d6dcda",
        background           = "#232829",
        selection             = "#393e3e",
        selection_foreground = "#d6dcda",
        selection_background = "#393e3e",
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
