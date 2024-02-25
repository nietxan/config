vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'nvim-lua/plenary.nvim'

	use 'ThePrimeagen/harpoon'

	use 'nvim-treesitter/nvim-treesitter'

	use 'rebelot/kanagawa.nvim'

	use 'tpope/vim-fugitive'
	
	use 'mzarnitsa/psql'
		
	use {
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup {} end
	}

	use {
		"ThePrimeagen/refactoring.nvim",
		requires = {
			{"nvim-lua/plenary.nvim"},
			{"nvim-treesitter/nvim-treesitter"}
		}
	}

	use 'rafamadriz/friendly-snippets'

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
end)
