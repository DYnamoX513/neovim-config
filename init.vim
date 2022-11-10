let loaded = 1
let loaded_netrwPlugin = 1

set shell=/bin/zsh
set number
set relativenumber
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set ignorecase
set smartcase
set cursorline
set scrolloff=4
set sidescrolloff=4
set clipboard+=unnamedplus

set termguicolors

" in lua/user/coc.lua
" set signcolumn=yes
" set updatetime=300
" set nobackup
" set nowritebackup

call plug#begin()
Plug 'terrortylor/nvim-comment' " Toggle comments
Plug 'windwp/nvim-autopairs' " automatically close ()[]{}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Highlighting
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'lukas-reineke/indent-blankline.nvim' " blank line indent

" Plug 'https://github.com/LunarVim/darkplus.nvim.git'

" Telescope
Plug 'nvim-lua/plenary.nvim' " dependency
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
" Stop using these because of an unknown bug in WSL -- 11/03/2022
Plug 'kyazdani42/nvim-tree.lua' " File explorer written in lua
" Plug 'kyazdani42/nvim-tree.lua', { 'branch': '1720-remove-dot-git-watcher' } " File explorer written in lua
Plug 'kyazdani42/nvim-web-devicons' " File icons

Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'} " Float terminal
Plug 'lewis6991/gitsigns.nvim'
call plug#end()

nnoremap <C-t> :NvimTreeToggle<CR>

function! LuaSetup()
lua << EOF
	require('user.indent-blankline')
	require('user.treesitter')
	require('user.coc')
	require('user.autopair')
	require('user.telescope')
	require('user.toggleterm')
	require('nvim_comment').setup {}
	require('gitsigns').setup {}
	require("bufferline").setup {
		options = {
			diagnostics = "coc"
		}
	}
	require("nvim-tree").setup {
		view = {
			adaptive_size = true,
			mappings = {
				list = {
					{ key = "t", action = "tabnew" },
					{ key = "<C-t>", action = "" },
				},
			},
		},
	}
EOF
endfunction

call LuaSetup()

" colorscheme hybrid
colorscheme onedark
