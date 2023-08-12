vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>/', 'gcc')
vim.keymap.set('v', '<leader>/', 'gc')

vim.keymap.set('i', ';j', '<Esc>')
-- github copilot keymaps
vim.api.nvim_set_keymap("i", ";k", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- nerdtree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>n', ':NvimTreeFocus<CR>')

-- sort lines
vim.keymap.set('v', '<leader>ls', ':\'<,\'>! awk \'{ print length, $0 }\' | sort -n | cut -d" " -f2-<CR>')

-- clear search
vim.keymap.set('n', '<leader>nh', ':nohl<CR>')

vim.keymap.set('n', 'x', '"_x')

-- tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>')
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>')
vim.keymap.set('n', '<leader>tn', ':tabn<CR>')
vim.keymap.set('n', '<leader>tp', ':tabp<CR>')

-- harpoon
vim.keymap.set('n', '<leader>ho', require('harpoon.ui').toggle_quick_menu)
vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next)
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev)

vim.keymap.set('n', '<leader>h1', ':lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set('n', '<leader>h2', ':lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set('n', '<leader>h3', ':lua require("harpoon.ui").nav_file(3)<CR>')
vim.keymap.set('n', '<leader>h4', ':lua require("harpoon.ui").nav_file(4)<CR>')
vim.keymap.set('n', '<leader>h5', ':lua require("harpoon.ui").nav_file(5)<CR>')

vim.keymap.set('n', '<leader>t1', ':lua require("harpoon.term").gotoTerminal(1)<CR>')
vim.keymap.set('n', '<leader>t2', ':lua require("harpoon.term").gotoTerminal(2)<CR>')
vim.keymap.set('n', '<leader>t3', ':lua require("harpoon.term").gotoTerminal(3)<CR>')

vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file)

-- split windows
vim.keymap.set('n', '<leader>tf', ':MaximizerToggle<CR>')

-- rename symbols
vim.keymap.set('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- oil.nvim
-- vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
