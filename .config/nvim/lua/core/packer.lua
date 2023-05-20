-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- CSS colors
  use 'ap/vim-css-color'

  -- Github copilot
  use 'github/copilot.vim'

  -- NightFox color scheme
  use 'EdenEast/nightfox.nvim'
  -- NV Code color scheme
  use 'christianchiarulli/nvcode-color-schemes.vim'
  -- Sonokai color scheme
  use 'sainnhe/sonokai'
  -- Edge color scheme
  use 'sainnhe/edge'
  -- Darcula color scheme
  use 'doums/darcula'
  -- Tokyodark color scheme
  use 'tiagovla/tokyodark.nvim'
  -- Vscode color scheme
  use 'Mofiqul/vscode.nvim'
  -- One dark color scheme
  use 'navarasu/onedark.nvim'
  -- Nebulous color scheme
  use 'Yagua/nebulous.nvim'

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'mxw/vim-jsx'

  -- Nerd Tree
  use 'preservim/nerdtree'
  use 'johnstef99/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- LSP setup
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
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
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                          , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- split windows
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'
  use 'tpope/vim-surround'

  -- status line
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- multi cursor
  use 'terryma/vim-multiple-cursors'

  -- prettier extension
  use 'sbdchd/neoformat'

  -- toggleterm plugin
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
end)
