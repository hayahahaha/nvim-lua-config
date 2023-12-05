-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- nvim theme
  -- use({
  --  'rose-pine/neovim',
  --  as = 'rose-pine',
  --  config = function()
  --   vim.cmd('colorscheme rose-pine')
  --  end
  -- })
  --
  use { "ellisonleao/gruvbox.nvim" }
  use { "folke/tokyonight.nvim" }
  -- nvim status line
  use 'nvim-lualine/lualine.nvim'    -- Statusline
  -- nvim icon
  use 'kyazdani42/nvim-web-devicons' -- File icons

  use("nvim-treesitter/nvim-treesitter")
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  -- use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- auto close tag
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  -- time tracking
  use 'wakatime/vim-wakatime'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use 'junegunn/goyo.vim'
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

  use 'akinsho/toggleterm.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'github/copilot.vim'
end)
