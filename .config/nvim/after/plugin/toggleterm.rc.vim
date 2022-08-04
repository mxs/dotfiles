lua << EOF
local toggleterm = require("toggleterm")

toggleterm.setup({
  size = 20, 
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = "horizontal",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
      },
    },
})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set({'n', 't'}, '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set({'n', 't'}, '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set({'n', 't'}, '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set({'n', 't'}, '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal

local node = Terminal:new({ 
  cmd = 'node',
  hidden = true,
  direction = 'float'
})

function _NODE_TOGGLE()
	node:toggle()
end

vim.keymap.set('n', '<leader>n', _NODE_TOGGLE, { silent = true, noremap = true })

EOF

