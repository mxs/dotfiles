lua << EOF

require("diffview").setup()

EOF

nnoremap <leader>df <cmd>DiffviewOpen<cr>
nnoremap <leader>dfc <cmd>DiffviewClose<cr>
