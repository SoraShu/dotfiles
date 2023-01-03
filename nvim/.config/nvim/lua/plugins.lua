return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'shaunsingh/nord.nvim'

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
      'phaazon/hop.nvim',
      branch = 'v2',
      config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}

    --use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

end)

