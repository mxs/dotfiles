lua << EOF

local saga = require'lspsaga'
local action = require("lspsaga.codeaction")

saga.init_lsp_saga({
  border_style = "rounded",
  finder_action_keys = {
    open = "<CR>",
    --quit = "<ESC>"
  }
})

-- code action
vim.keymap.set("n", "<leader>ca", action.code_action, { silent = true,noremap = true })
vim.keymap.set("v", "<leader>ca", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    action.range_code_action()
end, { silent = true,noremap =true })

-- rename
vim.keymap.set("n", "gr", require("lspsaga.rename").lsp_rename, { silent = true,noremap = true })

-- lsp finder to find the cursor word definition and reference
vim.keymap.set("n", "gh", require("lspsaga.finder").lsp_finder, { silent = true,noremap = true })

-- show signature help
vim.keymap.set("n", "gs", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})

-- show hover doc and press twice will jumpto hover window
vim.keymap.set("n", "K", require("lspsaga.hover").render_hover_doc, { silent = true })

-- preview definition
vim.keymap.set("n", "gp", require("lspsaga.definition").preview_definition, { silent = true,noremap = true })
EOF
