set softtabstop=4   " number of spaces in tab when editing
set expandtab ai       " tabs are spaces and auto-intendent
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered

abbr _sh #!/bin/bash

map <C-H> :set invhlsearch<CR> " invert search highlight

"enable just for html/css
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"Vim Plugin provides insert mode auto-completion for Quotes,brackets,etc
Plug 'raimondi/delimitmate'

"Vim plugin for snippets and hacks for html/css
Plug 'mattn/emmet-vim'

"needed for python completion
Plug 'davidhalter/jedi-vim'

"needed for C-family completion
Plug 'zchee/deoplete-clang'
Plug 'rip-rip/clang_complete'

" Unmanaged plugin (manually installed and updated)
Plug 'lokaltog/vim-powerline'

Plug 'bling/vim-airline'

Plug 'jvirtanen/vim-octave'

" Initialize plugin system
call plug#end()
