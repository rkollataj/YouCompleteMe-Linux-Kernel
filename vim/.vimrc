syntax on
colorscheme burnttoast256

set exrc
set tabstop=4 expandtab
set autowrite
set number
set nu
set rnu
let g:ycm_confirm_extra_conf=0
set clipboard=unnamedplus
set hlsearch
set laststatus=2
let mapleader=','

"source ~/.vimrc-kernel

let g:airline_theme = 'distinguished'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1

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
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-dispatch'
Plug 'vhdirk/vim-cmake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'aperezdc/vim-template'

" Initialize plugin system
call plug#end()

nnoremap <leader>n :NERDTreeToggle <CR>
nnoremap <leader>w :bd<CR>
map <leader>. :YcmCompleter GoToDeclaration<CR>
map <leader>, :YcmCompleter GoToDefinition<CR>
map <leader>m :noh<CR>
map <F1> :bprevious<CR>
map <F2> :bnext<CR>
map <F3> :lne<CR>
map <F4> :lp<CR>
nmap <C-b> :Dispatch<CR>
imap <C-b> <C-c> :Dispatch<CR>
nmap <C-a> :Ag!<CR>
nmap <leader>; :History:<CR>
nmap <leader>/ :History/<CR>

set secure
