"--- General settings ---"
" Plugins
source ~/.config/nvim/plugins.vim

" theme
set termguicolors
set background=dark
colorscheme onedark

" editor
syntax enable                           " Syntax highlight
set nocompatible                        " be iMproved, required
let mapleader = ','                     " Make ',' as default leader 
set guifont=Fira\ Code:h12
set backspace=indent,eol,start 	        " Make backspace behave like every other editor.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:• 
set number relativenumber               " Set line numbers
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" spaces
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set breakindent
set autowriteall
set noerrorbells visualbell t_vb=
set cursorline
set cursorcolumn

" search
set hlsearch                            " Enable search highlight
set incsearch                           " Enable incremental search

"--- Split Management ---"
set splitbelow
set splitright

"--- Mappings ---"
nmap <Leader>ev :tabedit $MYVIMRC<cr>   " Fast switch to init.vim
nmap <Leader>ep :tabedit ~/.config/nvim/plugins.vim<cr>	" Fast switch to plugins.vim
nmap <Leader><space> :nohlsearch<cr>    " Add simple highlight removal
nmap <Leader>w :w!<CR>                  " ,w save current file like :w

nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

inoremap kj <ESC>                       " Escape from insert mod when press kj
inoremap ло <ESC>                       " or ru keys ло instead of Escape 

"--- Final ---"
" get rid of [  ] around icons in NerdTree
if exists("g:loaded_webdevicons")
    call webdevicons#refresh()          " prevent loading nerdfonts icons twice
endif

" autocommands
augroup autosourcing
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source %   " Automatically source the nvim config file on save
    autocmd BufWritePost ~/.config/nvim/plugins.vim source ~/.config/nvim/init.vim  " Automatically source the nvim config file on save
augroup END

" Some plugin seems to search for something at startup, so this fixes that.
silent! nohlsearch
