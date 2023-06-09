vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
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
    use('lukas-reineke/indent-blankline.nvim')
    use('cdelledonne/vim-cmake')
    use('preservim/nerdtree')
    use('lewis6991/gitsigns.nvim')
    use('numToStr/Comment.nvim')

    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    {'williamboman/mason.nvim'},
		    {'williamboman/mason-lspconfig.nvim'},
            {'folke/neodev.nvim'},

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

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- colorschemes
    use({'marko-cerovac/material.nvim', as = 'material',})
    use({'fcpg/vim-orbital', as = 'orbital',})
    use({'rose-pine/neovim', as = 'rose-pine',})
    use({'projekt0n/github-nvim-theme', tag = 'v0.0.7',})
    use({'folke/tokyonight.nvim', as = 'tokyonight',})
    use({'catppuccin/nvim', as = 'catppuccin'})
    use({'junegunn/seoul256.vim', as = 'seoul256',})
    use({'zefei/cake16', as = 'cake16',})
    use({'water-sucks/darkrose.nvim', as = 'darkrose',})
    use({'aktersnurra/no-clown-fiesta.nvim', as = 'no-clown-fiesta',})
    use({'lvim-tech/lvim-colorscheme', as = 'lvim-colorscheme',})
    use({'doums/darcula', as = 'darcula',})
    use({'nordtheme/vim', as = 'nord',})
    use({'rafi/awesome-vim-colorschemes',})





end)
