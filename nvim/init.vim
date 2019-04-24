" VIM basic config
let g:python3_host_prog = 'C:\Users\537002\AppData\Local\Programs\Python\Python35\python'
set clipboard=unnamedplus
"set the leader ,
let mapleader = ","

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" use system clipboard
set clipboard=unnamed

" VIM PLUG
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'iamcco/clock.nvim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'tpope/vim-fugitive'

call plug#end()

" VIM airline 
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" airline_theme https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='solarized'

" display line number
" set the line number is relative
set relativenumber
" no beef
set noeb
set guifont=DejaVu_Sans_Mono_for_Powerline:h10

" themes config
set bg=light
set guioptions= 
colorscheme gruvbox

" indentline config
set list lcs=tab:\¦\ 
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char = '¦'

""""""""""""""""""""""""""""""""""""
"      ==>  NERDTREE               "
""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
"设置符号标识
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"打开一个文件后关闭NERDTree
let g:NERDTreeQuitOnOpen=1
"在NERDTree中显示隐藏文件
let NERDTreeShowHidden=1
"当没有文件打开时自动打开NERDTREE
"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



""""""""""""""""""""""""""""""""""""
"      ==>  CLOCK                  "
""""""""""""""""""""""""""""""""""""
" auto enable when neovim start
let g:clockn_enable = 1

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
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
let g:ctrlp_max_height = 20
