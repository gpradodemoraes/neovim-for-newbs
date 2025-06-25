vim.cmd("set mouse=")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
-- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
-- vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
-- vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
-- vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

--vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
vim.o.cursorline = true
vim.o.scrolloff = 8
vim.keymap.set({'n', 'c'}, '<C-l>', ':nohlsearch<CR>')
-- vim.keymap.set({'n', 'c'}, '<C-l>', '<cmd>echo "GABRIEL"<CR>')
-- map <CR> :CtrlPMRU<CR>
vim.cmd("nnoremap <CR> <C-^>");

