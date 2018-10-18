set shortmess=atI       " Don't show the intro message when starting vim
set softtabstop=8 tabstop=8 shiftwidth=8 noexpandtab  " number of spaces in tab when editing
set autoindent          " Copy indent from last line when starting new line
set expandtab ai        " tabs are spaces and auto-intendent
set number              " show line numbers
set showcmd             " show command in bottom bar
set hidden              " When a buffer is brought to foreground, remember undo history and marks
set history=500         " Increase history from 20 default to 1000
set cursorline          " highlight current line
set colorcolumn=80      " Highlight 80th column
set updatetime=500      " Let plugin show effect after 500ms, not 4s
set mouse-=a            " Disable mouse click to go to position
set path+=**,~/**
set visualbell          " Use visual bell instead of audible bell (annnnnoying)
set wildmenu            " Visual autocomplete for command menu
set undofile            " Persistent Undo
set showmatch           " Highlight matching [{()}]
"set hlsearch           " Highlight matches
set nocompatible

syntax enable
filetype plugin indent on

abbr _sh #!/bin/bash
abbr _cp #include<bits/stdc++.h>

"invert relative search
map <C-H> :set invrelativenumber<CR> 

"Creates the tag file
command! MakeTags !ctags -R .
" ^] to jump to tag under cursor
" g^] for ambiguous tags
" ^t to jump back up the tag stack

"File Browser
let g:netrw_banner=0            "disable annoying banner
let g:netrw_browser_split=4     "open in prior window
let g:netrw_altv=1              "open splits to the right
let g:netrw_liststyle=3         "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"function! CleverTab()
"   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"      return "\<Tab>"
"   else
"      return "\<C-N>"
"   endif
"endfunction
"inoremap <Tab> <C-R>=CleverTab()<CR>

"SMALL snippet for completion
nnoremap ,html :-1r /home/homuncculus/.local/share/nvim/.skeleton.html<CR>3jwf>a

"set completeopt-=preview
"set completeopt+=longest,menuone,noselect
"let g:mucomplete#enable_auto_at_startup = 1

"C-family completion setup
let g:clang_library_path = '/usr/lib/llvm-4.0/lib/libclang.so.1'
let g:clang_user_options = '-std=c++14'
let g:clang_complete_auto = 1

"Theme spacific
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

" Enable completion where available.

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" deal with swap files
Plug 'gioele/vim-autoswap'

"Vim Plugin provides insert mode auto-completion for Quotes,brackets,etc
Plug 'raimondi/delimitmate'

"plugin for Golang
Plug 'fatih/vim-go',{ 'do': ':GoInstallBinaries'}
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

"Completion manager
"Plug 'lifepillar/vim-mucomplete'

" Unmanaged plugin (manually installed and updated)
" Plug 'lokaltog/vim-powerline'

"plugin for Hugo(Blog)
Plug 'robertbasic/vim-hugo-helper'

Plug 'sheerun/vim-polyglot' 

" Cool and light-weight powerline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Initialize plugin system
call plug#end()

"Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
