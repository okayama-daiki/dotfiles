local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- https://github.com/vim-jp/vimdoc-ja
Plug 'vim-jp/vimdoc-ja'

-- https://github.com/neoclide/coc.nvim
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

-- Languages
-- https://github.com/rust-lang/rust.vim
Plug 'rust-lang/rust.vim'

-- https://github.com/neoclide/coc-tsserver
Plug 'neoclide/coc-tsserver'

-- Window Management
-- https://github.com/nvim-tree/nvim-tree.lua
Plug 'nvim-tree/nvim-web-devicons' --optional
Plug 'nvim-tree/nvim-tree.lua'

-- https://github.com/nvim-telescope/telescope.nvim
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.6' })
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'

-- Utilities
-- https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

-- Styling --
-- https://github.com/projekt0n/github-nvim-theme
Plug 'projekt0n/github-nvim-theme'

-- https://github.com/j-hui/fidget.nvim
Plug 'j-hui/fidget.nvim'

vim.call('plug#end')
