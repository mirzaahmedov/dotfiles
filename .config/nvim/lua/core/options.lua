vim.g.mapleader = " "

vim.g.NERDTreeShowLineNumbers = 1

vim.cmd([[colorscheme nightfox]])

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.encoding = 'utf-8'
vim.opt.autoindent = true
vim.opt.smartindent = true

-- highlight current line
vim.opt.cursorline = true

-- line wrap
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- true colors
vim.opt.termguicolors = true
