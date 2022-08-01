lua << EOF

require("nvim-tree").setup()

EOF

nnoremap <silent><C-n> :NvimTreeToggle<cr>
