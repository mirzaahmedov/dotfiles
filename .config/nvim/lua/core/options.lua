vim.g.neoformat_enabled_sql = {"pg_format"}

vim.g.mapleader = ","

vim.g.NERDTreeShowLineNumbers = 1

vim.g.neoformat_only_msg_on_error = 1

-- line numbers
-- vim.opt.list = true
-- vim.opt.listchars = "trail:·,precedes:«,extends:»,eol:↲,tab:->"
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

-- github copilot
vim.g.copilot_no_tab_map = true

-- max width indicator
vim.opt.colorcolumn = "100"

-- format on save
vim.cmd "autocmd BufWritePre * Neoformat"

-- require('onedark').setup{
--   style = 'warm',
-- }
-- require('onedark').load()

-- Edge colorscheme
-- vim.g.edge_style = 'aura'
-- vim.g.edge_better_performance = 1
-- vim.cmd "colorscheme edge"

-- Nebulous colorscheme
-- require("nebulous").setup {
--   variant = "fullmoon",
--   disable = {
--     terminal_colors = true,
--   },
--   italic = {
--     comments   = false,
--     keywords   = true,
--     functions  = false,
--     variables  = true,
--   },
-- }

vim.opt.background = 'dark'
vim.cmd "colorscheme oxocarbon"

highlight = { enable = true, disable = { "css" } }
