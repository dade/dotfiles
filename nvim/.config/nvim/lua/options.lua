require "nvchad.options"

-- add yours here!
vim.g.have_nerd_font = true

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

o.tabstop = 2
o.shiftwidth = 2

o.scrolloff = 15
o.splitright = true
o.splitbelow = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.signcolumn = 'yes'
o.updatetime = 250

o.relativenumber = true
o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
