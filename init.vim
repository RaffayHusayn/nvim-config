set noerrorbells
set nu
set tabstop=4 softtabstop=4
set relativenumber
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set belloff=all

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey



call plug#begin("~/.config/nvim/plugged")
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()
" do this if want to change the constrast

"let g:gruvbox_contrast_dark = 'soft'
"
colorscheme gruvbox

map <silent> <C-n> :NERDTreeFocus<CR>

"This is to have a cool bottom line called Lualine
lua << END
require('lualine').setup()
END

" Enable blinking together with different cursor shapes for insert/command mode, and cursor highlighting:
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
