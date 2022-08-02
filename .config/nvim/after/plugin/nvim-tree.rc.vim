lua << EOF

require("nvim-tree").setup({
  filters = {
    custom = { "^.git" }
  }
})

EOF

nnoremap <silent><C-e> :NvimTreeToggle<cr>
nnoremap <silent><C-d> :NvimTreeFindFile<cr>
