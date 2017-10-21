call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'
Plug 'flazz/vim-colorschemes'
Plug 'prettier/vim-prettier'

call plug#end()

map <silent> <leader>ff :Files<CR>
map <silent> <leader>fg :GFiles<CR>
map <silent> <leader>fb :Buffers<CR>
map <silent> <leader>ft :Tags<CR>
map <silent> <leader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>cc :TComment<CR>

set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set autoindent
set cindent
set hlsearch

set number
set colorcolumn=80

set whichwrap+=<,>,h,l,[,]
onoremap <silent> j gj
onoremap <silent> k gk

syntax on
filetype plugin indent on

let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync
