set number
set mouse=a
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set clipboard+=unnamed,unnamedplus

let g:clipboard = {
    \ 'name': 'wayland',
    \ 'copy': {
    \     '+': ['wl-copy', '--trim-newline'],
    \     '*': ['wl-copy', '--trim-newline'],
    \ },
    \ 'paste': {
    \     '+': ['wl-paste', '--no-newline'],
    \     '*': ['wl-paste', '--no-newline'],
    \ },
    \ 'cache_enabled': 1
    \ }

call plug#begin('~/.vim/plugged')

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Color scheme
set termguicolors

syntax on

colorscheme catppuccin-mocha

" Unicode symbols for the Status Line
let g:airline_left_alt_sep = "\ue0b5"
let g:airline_left_sep = "\ue0b4"
let g:airline_right_alt_sep = "\ue0b7"
let g:airline_right_sep = "\ue0b6"

" configuracion de airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "catppuccin"

" NERDTREE Configuracion
let NERDTreeQuitOnOpen=1
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Combinaciones de teclas
map <C-n> :bnext<CR>
map <C-p> :bprevious<CR>
