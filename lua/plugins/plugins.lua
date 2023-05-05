vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'neovim/nvim-lspconfig' }

  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate"
  }

  use {
    "williamboman/mason-lspconfig.nvim",
    requires = { {"williamboman/mason.nvim"} }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  use {'romgrk/barbar.nvim', requires = {
    'lewis6991/gitsigns.nvim',
  }}

  use { 'numToStr/Comment.nvim' }

  use { 's1n7ax/nvim-terminal' }

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp'
  }

	use {
		'jose-elias-alvarez/null-ls.nvim',
		'MunifTanjim/prettier.nvim',
	}

end)
