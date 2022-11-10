lua << EOF
require("neo-tree").setup({
  close_if_last_window = true,
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
    },
    follow_current_file = true
  },
})
EOF

nnoremap <silent><C-n> <cmd>:Neotree toggle<cr>
