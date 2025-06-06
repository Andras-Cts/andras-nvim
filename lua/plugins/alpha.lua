return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    -- Custom Header (NEOVIM ASCII)
    dashboard.section.header.val = {
       [[⠀        ⠀⠀⠀⢀⣀⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀           ]],
       [[⠀       ⠀⢀⣤⣾⣿⣾⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀           ]],
       [[⠀       ⢠⣾⣿⢛⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀           ]],
       [[⠀       ⣾⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧           ]],
       [[⠀       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿           ]],
       [[⠀       ⣿⡿⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠻⢿⡵           ]],
       [[⠀       ⢸⡇⠀⠀⠉⠛⠛⣿⣿⠛⠛⠉⠀⠀⣿⡇           ]],
       [[⠀       ⢸⣿⣀⠀⢀⣠⣴⡇⠹⣦⣄⡀⠀⣠⣿⡇           ]],
       [[⠀       ⠈⠻⠿⠿⣟⣿⣿⣦⣤⣼⣿⣿⠿⠿⠟⠀           ]],
       [[⠀       ⠀⠀⠀⠀⠸⡿⣿⣿⢿⡿⢿⠇⠀⠀⠀⠀           ]],
       [[⠀       ⠀⠀⠀⠀⠀⠀⠈⠁⠈⠁⠀⠀⠀⠀⠀⠀           ]],
       [[⠀                      _           ]],
       [[ _ __   ___  _____   _(_)_ __ ___  ]],
       [[| '_ \ / _ \/ _ \ \ / / | '_ ` _ \ ]],
       [[| | | |  __/ (_) \ V /| | | | | | |]],
       [[|_| |_|\___|\___/ \_/ |_|_| |_| |_|]],
    }

    dashboard.opts.layout[1].val = 3  -- top padding
    dashboard.opts.opts.margin = 3  -- side marging
    dashboard.opts.opts.position = "center"  -- top padding


    alpha.setup(dashboard.opts)
  end,
}

