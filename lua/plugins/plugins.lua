vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "sainnhe/everforest" }
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Lsp
  use { 'neovim/nvim-lspconfig' }

  -- Mason
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate"
  }
  use { "williamboman/mason-lspconfig.nvim" }

  -- Icons
  use { 'nvim-tree/nvim-web-devicons' }

  -- Git
  use { 'lewis6991/gitsigns.nvim' }

  -- Comment
  use { 'numToStr/Comment.nvim' }

  -- Autocompletion
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp'
  }

  -- Formatter/Linter
	use { 'jose-elias-alvarez/null-ls.nvim' }

  -- CSS colorizer
  use { 'norcalli/nvim-colorizer.lua' }

end)
