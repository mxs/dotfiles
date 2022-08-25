"===== Plugins ========================
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'nvim-telescope/telescope-ui-select.nvim',
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'kyazdani42/nvim-tree.lua'
Plug 'folke/trouble.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'akinsho/toggleterm.nvim', { 'tag' : 'v2.*' }
Plug 'sindrets/diffview.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lualine/lualine.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'goolord/alpha-nvim'

" Plug 'sainnhe/sonokai'
" Plug 'sainnhe/everforest'
" Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim'
call plug#end()
"======================================


"===== Key maps =======================
let mapleader = " "
" esc in insert and visual mode
inoremap jk <esc>
vnoremap jk <esc>
cnoremap jk <esc>

nnoremap <F3> :set hlsearch!<CR>
nnoremap <leader>so :so $NVIMINIT<CR>
" easier movement between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" no copy on delete
nnoremap x "_x
" move selected lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" resizing
nnoremap <A-Up> :resize -2<CR>
nnoremap <A-Down> :resize +2<CR>
nnoremap <A-Left> :vertical resize -2<CR>
nnoremap <A-Right> :vertical resize +2<CR>
" holds on to visual mode after indent
vnoremap < <gv 
vnoremap > >gv 
"=======================================
"=======================================

"====== colours ======================
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
"====================================


"======= Sets ==============
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
set cursorcolumn
set clipboard+=unnamedplus
set noswapfile
set completeopt=menu,menuone,noselect
set guicursor+=a:blinkon0
set fillchars+=diff:╱

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


