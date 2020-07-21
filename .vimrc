set ruler
set number
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'arcticicestudio/nord-vim'
  Plug 'scrooloose/nerdcommenter'
call plug#end()

colorscheme nord

" Nerdtree config
" Specify shortcut to toggle nertdree ctrl+n
map <C-n> :NERDTreeToggle<CR>
" cloese vim if the only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline config
" enable powerline fonts
let g:airline_powerline_fonts = 1

