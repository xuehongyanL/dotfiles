set nocompatible
syntax enable

set number relativenumber
set mouse=a
set cursorline
set colorcolumn=80
set encoding=utf-8
set whichwrap+=h,l,>,<,[,]
set clipboard=unnamed
set guifont=JetBrains\ Mono:h18


call plug#begin()

    " Theme
    Plug 'tanvirtin/monokai.nvim'
    
    " UI
    Plug 'MunifTanjim/nui.nvim'

    " File tree
    Plug 'kyazdani42/nvim-tree.lua'

    " LSP related
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'nvim-lua/lsp-status.nvim'

    " Tabs
    Plug 'crispgm/nvim-tabline'

    " Status line
    Plug 'nvim-lualine/lualine.nvim'

call plug#end()


lua require('init')

