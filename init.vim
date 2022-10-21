let loaded = 1
let loaded_netrwPlugin = 1

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
Plug 'kyazdani42/nvim-tree.lua' " File explorer written in lua
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
call plug#end()

nnoremap <C-t> :NvimTreeToggle<CR>

function! LuaSetup()
lua << EOF
	require'user.indent-blankline'
	require'user.treesitter'
	require'user.coc'
	require'user.autopair'
	require('nvim_comment').setup {}
	require("nvim-tree").setup {
		view = {
			-- adaptive_size = true,
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

colorscheme hybrid
