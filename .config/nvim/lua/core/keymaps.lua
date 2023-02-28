vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>/', 'gcc')
vim.keymap.set('v', '<leader>/', 'gc')

vim.keymap.set('i', 'jk', '<Esc>')

-- nerdtree
vim.keymap.set('n', '<leader>e', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTreeFocus<CR>')

-- clear search
vim.keymap.set('n', '<leader>nh', ':nohl<CR>')

vim.keymap.set('n', 'x', '"_x')

-- tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>')
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>')
vim.keymap.set('n', '<leader>tn', ':tabn<CR>')
vim.keymap.set('n', '<leader>tp', ':tabp<CR>')

-- split windows
vim.keymap.set('n', '<leader>tf', ':MaximizerToggle<CR>')

-- github copilot keymaps
vim.api.nvim_set_keymap("i", "kj", 'copilot#Accept("<CR>")', { silent = true, expr = true })
