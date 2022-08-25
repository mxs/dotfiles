lua << EOF
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "yarn.lock", "package-lock.json" },
  },
  pickers = {
    find_files = {
      theme = 'dropdown'
    },
    live_grep = {
      theme = 'dropdown'
    },
    lsp_document_symbols = {
      theme = 'dropdown'
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
EOF

nnoremap <silent><leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent><leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent><leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent><leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <silent><leader>fgs <cmd>lua require('telescope.builtin').git_status()<cr>
"nnoremap <silent><leader>fs <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <silent><C-r> <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <silent><C-t> <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <silent><leader>;; <cmd>lua require('telescope.builtin').resume()<cr>
nnoremap <silent><leader>;e <cmd>lua require('telescope.builtin').diagnostics()<cr>
