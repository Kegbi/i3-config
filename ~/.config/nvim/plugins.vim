"--- PLUGINS ---"
call plug#begin('~/.config/nvim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-abolish'
    Plug 'lyokha/vim-xkbswitch'
    Plug 'Yggdroot/indentLine'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'mhinz/vim-startify'

    Plug 'leafgarland/typescript-vim'

    Plug 'preservim/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

    " airline
    Plug 'vim-airline/vim-airline' |
        \ Plug 'vim-airline/vim-airline-themes'

    " colorschemes
    Plug 'joshdick/onedark.vim'

    " Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" PLUGIN SETTINGS
"--- Airline ---"
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

"--- devicons ---"
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

"--- xkbswitch ---"
let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']

"--- CtrlP ---"
nmap <c-m> :CtrlPMRU<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,result:30'

"--- fzf ---"
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>r :Tags<CR>

let $FZF_DEFAULT_COMMAND = 'ag --hidden -l -g ""'
let g:fzf_preview_window = ['right:40%', 'ctrl-/']

"--- Gutentags ---"
let g:gutentags_cache_dir = '~/.tags'
let g:gutentags_file_list_command = 'rg --files'
let g:gutentags_project_root = ['.git']

"---coc.nvim ---"
"coc-css
autocmd FileType scss setl iskeyword+=@-@

" PLUGIN MAPPINGS
"--- NERDtree ---"
map <C-n> :NERDTreeToggle<CR>
