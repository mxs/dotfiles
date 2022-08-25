lua << EOF
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local fortune = require('alpha.fortune')

dashboard.section.header.val = {
    [[                                                                   ]],
		[[      ████ ██████           █████      ██                    ]],
		[[     ███████████             █████                            ]],
		[[     █████████ ███████████████████ ███   ███████████  ]],
		[[    █████████  ███    █████████████ █████ ██████████████  ]],
		[[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
		[[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
		[[██████  █████████████████████ ████ █████ █████ ████ ██████]],
}

dashboard.section.buttons.val = {
  --dashboard.button("e", "  New File    ", ":enew<CR>"),
  dashboard.button("<space> ff", "  Find File   ", ":Telescope find_files<CR>"),
  dashboard.button("<space> fg", "  Find Text   ", ":Telescope live_grep<CR>"),
  --dashboard.button("c", "  NVIM Config ", ":Telescope dotfiles<CR>"),
  --dashboard.button("q", "  Quit        ", ":qa<CR>"),
}

dashboard.section.footer.val = fortune

alpha.setup(dashboard.opts)
EOF
