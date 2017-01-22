syntax on
colorscheme burnttoast256

set tabstop=4 expandtab
set autowrite
set number
let g:ycm_confirm_extra_conf=0
set clipboard=unnamedplus
" set mouse=a
let mapleader=','

source ~/.vimrc-kernel

let g:airline_theme = 'distinguished'
let g:airline#extensions#tabline#enabled = 1

let g:ycm_autoclose_preview_window_after_completion = 1

source ~/.vim/plugin/cscope_maps.vim

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-abolish'
Plug 'rhysd/vim-clang-format'

" Initialize plugin system
call plug#end()

nnoremap <leader>n :NERDTreeToggle <CR>
nnoremap <leader>w :bd<CR>
map <leader>/ :YcmCompleter GoToDeclaration<CR>
map <leader>. :YcmCompleter GoToDefinition<CR>
map <F1> :bprevious<CR>
map <F2> :bnext<CR>
map <F3> :lne<CR>
map <F4> :lp<CR>
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
