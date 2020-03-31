" Enable folding
set foldmethod=indent
set foldlevel=99
au BufNewFile,BufRead /*.rasi setf css

let g:deoplete#enable_at_startup = 1
let g:airline_theme='deus'
 let g:startify_bookmarks = [ '~/.config/nvim/init.vim', '~/.zshrc', '~/.config/polybar/config', '~/.config/bspwm/bspwmrc', '~/.config/sxhkd/sxhkdrc' ]
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   dotfiles']      },
          \ ]

" Enable folding with the spacebar
nnoremap <space> za

syntax on
filetype indent plugin on

set encoding=utf-8

let python_highlight_all=1
syntax on

set nu

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sbdchd/neoformat'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

" Initialize plugin system
call plug#end()
