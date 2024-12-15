vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use ({

		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use('theprimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')
	
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	}
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')
	use('hrsh7th/cmp-cmdline')
	use('hrsh7th/nvim-cmp')

	use('L3MON4D3/LuaSnip')
	use('saadparwaiz1/cmp_luasnip')
    
    use('mfussenegger/nvim-jdtls')
    use('mfussenegger/nvim-dap') 
    use('jay-babu/mason-nvim-dap.nvim')
    use('mfussenegger/nvim-lint')

    --Autopairs
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
end)

