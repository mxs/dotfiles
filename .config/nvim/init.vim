
"-------- Plugins -----------------

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'williamboman/nvim-lsp-installer'
"Plug 'karb94/neoscroll.nvim'
call plug#end()

"---------------------------------


"-------- Key mappings -------------------

let mapleader = " "
 
" esc in insert and visual mode
inoremap jk <esc>
vnoremap jk <esc>
" esc in command mode
cnoremap jk <esc>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <F3> :set hlsearch!<CR>
"-----------------------------------------


"--------- Settings -----------------
if has('termguicolors')
  set termguicolors
endif

"let g:sonokai_style = 'atlantis'
"let g:sonokai_better_performance = 1
"colorscheme sonokai
"let g:sonokai_transparent_background = 2

"let g:everforest_background = 'hard'
"colorscheme everforest
"set background=dark

"let ayucolor="mirage"
"colorscheme ayu

colorscheme dracula

set relativenumber 
set number
set nohlsearch
set scrolloff=8
set signcolumn=yes
set nowrap
set smartindent
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set cc=80
set cursorline
set clipboard+=unnamedplus

" lspconfig {{{
lua << EOF
-- require("nvim-lsp-installer").setup {}
-- local util = require "lspconfig/util"
-- require 'lspconfig'.tsserver.setup {
  -- on_attach = function(client)
    -- client.resolved_capabilities.document_formatting = false
    -- client.resolved_capabilities.document_range_formatting = false
  -- end,
  -- root_dir = util.root_pattern(".git", "tsconfig.json", "jsconfig.json", "package.json"),
  -- filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  -- cmd = { "typescript-language-server", "--stdio", "--tsserver-path=/Users/mxs/.nvm/versions/node/v16.13.2/lib/node_modules/typescript/lib", "--log-level=4", "--tsserver-log-file=tss-log.txt", "--tsserver-log-verbosity=verbose" }
--}
EOF
" }}}


