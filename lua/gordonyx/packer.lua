-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-dadbod')
    use('kristijanhusak/vim-dadbod-ui')

    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    {'williamboman/mason.nvim'},
		    {'williamboman/mason-lspconfig.nvim'},

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},
		    {'hrsh7th/cmp-buffer'},
		    {'hrsh7th/cmp-path'},
		    {'saadparwaiz1/cmp_luasnip'},
		    {'hrsh7th/cmp-nvim-lsp'},
		    {'hrsh7th/cmp-nvim-lua'},

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},
		    {'rafamadriz/friendly-snippets'},
	    }
    }


    -- colorschemes
    use({'marko-cerovac/material.nvim', as = 'material',})
    use({'rafi/awesome-vim-colorschemes' })
    use({'fcpg/vim-orbital', as = 'orbital',})
    use({'rose-pine/neovim', as = 'rose-pine',})  
    use({'projekt0n/github-nvim-theme', tag = 'v0.0.7',})	
    use({'folke/tokyonight.nvim', as = 'tokyonight',})





end)
