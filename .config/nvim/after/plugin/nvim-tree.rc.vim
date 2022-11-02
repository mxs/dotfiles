lua << EOF

require("nvim-tree").setup({
  filters = {
    custom = { "^.git" }
  }
})

EOF

"nnoremap <silent><C-n> :NvimTreeToggle<cr>
nnoremap <silent><C-n> :NvimTreeFindFile<cr>
