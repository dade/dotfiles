vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false

vim.keymap("n", "<c-k>", ":wincmd k<CR>")
vim.keymap("n", "<c-j>", ":wincmd j<CR>")
vim.keymap("n", "<c-h>", ":wincmd h<CR>")
vim.keymap("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leander>h", ":nohlsearch<CR>")
vim.wo.number = true
