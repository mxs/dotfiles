lua << EOF
local saga = require 'lspsaga'
saga.init_lsp_saga({
  border_style = "rounded",
  finder_action_keys = {
    open = "<CR>"
  },
})

vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true, noremap = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true, noremap = true})
EOF



