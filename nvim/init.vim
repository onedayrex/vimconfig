" VIM basic config
set clipboard=unnamedplus
"set the leader ,
let mapleader = ","

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" VIM PLUG
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'vim-scripts/bufexplorer.zip'
"Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'simplenote-vim/simplenote.vim'
"Plug 'akiyosi/gonvim-fuzzy'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf.git'
Plug 'terryma/vim-multiple-cursors.git'
Plug 'nicwest/vim-http.git'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'github/copilot.vim'
"Plug 'rust-lang/rust.vim'

call plug#end()

" VIM airline 
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" airline_theme https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='violet'

" display line number
" set the line number is relative
"set relativenumber
set number
" no beef
set noeb
set guifont=DejaVu\ Sans\ Mono\ for\ PowerLine:h12
"set guifont=Go\ Mono\ for\ PowerLine:h12
"set guifont=SF\ Pro\ Rounded:h12
"set guifont=SF\ Mono\ PowerLine:h12

" themes config
" dark,light
set bg=dark
set guioptions= 
colorscheme gruvbox

" indentline config
set list lcs=tab:\¦\ 
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char = '¦'



""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0 
let g:ctrlp_map = '<c-f>'
"按键映射
map <leader>cp :CtrlP<cr>
map <leader>cb :CtrlPBuffer<cr>
map <leader>cr :CtrlPMRU<cr>
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:20' 


"COC

"FZF
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

"RUST
let g:rust_recommended_style = 0
