call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
call plug#end()

map <silent> <leader>cc :TComment<CR>
map <silent> <leader>ff :Files<CR>
map <silent> <leader>fg :GFiles<CR>
map <silent> <leader>nt :NERDTreeToggle<CR>
map <silent> <leader>tt :terminal<CR>

tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

autocmd BufEnter term://* startinsert
autocmd TermOpen term://* startinsert

colorscheme material-monokai
