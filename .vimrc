" let g:jedi#auto_initialization = 0
" :au BufNewFile,BufRead *.py,*.php,*.rb,*.html,*.js,*.ts,*.md ...
"let g:jedi#force_py_version = 3

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4 softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set smartindent
" On pressing tab, insert 4 spaces
set expandtab
set hlsearch
set nowrap
set incsearch
set scrolloff=8
"set colorcolumn=80
"set term=builtin_ansi
"set nocompatible
"set background=dark

"nmap [3~] x
"imap [3~] lxi
"inoremap [3~] <c-h>
"cnoremap [3~] <c-h>

"This unsets the "last search pattern" register by hitting return"
nnoremap <CR> :noh<CR><CR>

let need_to_install_plugins = 0
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let need_to_install_plugins = 1
endif

call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'ap/vim-buftabline'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/indentpython.vim'
Plug 'lepture/vim-jinja'
Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "to highlight files in nerdtree
Plug 'Vimjas/vim-python-pep8-indent'  "better indenting for python
Plug 'kien/ctrlp.vim'  " fuzzy search files
Plug 'wsdjeg/FlyGrep.vim'  " awesome grep on the fly
Plug 'christoomey/vim-tmux-navigator'
Plug 'tweekmonster/impsort.vim'  " color and sort imports
call plug#end()

"Plug 'tweekmonster/impsort.vim'  " color and sort imports

" highlight Normal guibg=none

if need_to_install_plugins == 1
    echo "Installing plugins..."
    silent! PlugInstall
    echo "Done!"
    q
endif

" always show the status bar
set laststatus=2

" enable 256 colors
set t_Co=256
syntax on

" turn off gruvbox if there is lag
":colorscheme gruvbox 
":colorscheme peachpuff
:colorscheme onedark
":colorscheme OceanicNext

:set bg=dark

" turn on line numbering
set number

" easy split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tabs:
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>"


