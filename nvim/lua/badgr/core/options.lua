vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

local o = vim.opt
o.number = true
o.relativenumber = true
o.mouse = "a"
o.showmode = false
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
o.breakindent = true
o.undofile = true
o.ignorecase = treu
o.smartcase = true
o.signcolumn = "yes"
o.updatetime = 250
o.timeoutlen = 300
o.splitright = true
o.splitbelow = true
o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
o.inccommand = "split"
o.cursorline = true
o.scrolloff = 10
o.tabstop = 2
o.shiftwidth = 2
