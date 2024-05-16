-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Gruvbox theme
  use "ellisonleao/gruvbox.nvim"
  --- Utility functions for neovim plugins
  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  -- Telescope (Fuzzy Finder)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Fast Syntax Highlighting tree
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  -- Harpoon
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  -- undotree
  use "mbbill/undotree"
  -- fugitive
  use "tpope/vim-fugitive"
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
 use 'DaikyXendo/nvim-material-icon'
  -- WakaTime (Time Tracking)
  use 'wakatime/vim-wakatime'
  -- Discord Rich Presence
  use 'andweeb/presence.nvim'
  -- GitHub Copilot (AI Autocompletion)
  use { "zbirenbaum/copilot.lua" }
end)
