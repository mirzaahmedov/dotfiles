require('core.lazy')
require('core.options')
require('core.keymaps')

require('plugins.treesitter')
require('plugins.lsp')
require('plugins.telescope')
require('plugins.nvim-tree')
require('plugins.lua-snip')

require('user.hello')
require('user.test_go')

highlight = { enable = true, disable = { "css" } }
