lua << EOF
local null_ls = require("null-ls")
local builtins = null_ls.builtins

null_ls.setup({
  sources = {
    builtins.formatting.prettier,
    --builtins.diagnostics.eslint_d
  }
})

EOF
