return {
-- Primagen plugins
'ThePrimeagen/harpoon',
'ThePrimeagen/vim-be-good',

-- Oxocarbon color scheme
'nyoom-engineering/oxocarbon.nvim',

-- Rose Pine color scheme
{ 'rose-pine/neovim', name = 'rose-pine' },

-- Github copilot
'github/copilot.vim',

-- NightFox color scheme
'EdenEast/nightfox.nvim',

-- Comments
{
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup()
  end
},
-- 'JoosepAlviste/nvim-ts-context-commentstring',
'mxw/vim-jsx',

'nvim-tree/nvim-tree.lua',
'nvim-tree/nvim-web-devicons',

-- Post-install/update hook with neovim command
{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

-- LSP setup
{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },           -- Required
      { 'williamboman/mason.nvim' },         -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },       -- Required
      { 'hrsh7th/cmp-nvim-lsp' },   -- Required
      { 'hrsh7th/cmp-buffer' },     -- Optional
      { 'hrsh7th/cmp-path' },       -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },   -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },           -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  },

{
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
},

{
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                          , branch = '0.1.x',
  dependencies = { { 'nvim-lua/plenary.nvim' } }
},

-- split windows
'christoomey/vim-tmux-navigator',
-- 'szw/vim-maximizer',
'tpope/vim-surround',

-- status line
'vim-airline/vim-airline',
'vim-airline/vim-airline-themes',

-- prettier extension
'sbdchd/neoformat',
}
