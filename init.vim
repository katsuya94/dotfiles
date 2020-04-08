set termguicolors
set mouse=a
set number
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'scrooloose/nerdcommenter'
call plug#end()

let NERDSpaceDelims=1

let g:go_gopls_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_highlight_diagnostic_errors = 0
let g:go_highlight_diagnostic_warnings = 0

let g:lsp_virtual_text_prefix = " // "
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_highlight_references_enabled = 1

let g:asyncomplete_auto_completeopt = 0

autocmd User lsp_setup call lsp#register_server({
    \ 'name': 'gopls',
    \ 'cmd': {server_info->['gopls']},
    \ 'whitelist': ['go'],
    \ })

set omnifunc=
set completeopt=menuone,noinsert,noselect,preview
set keywordprg=:LspHover

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

nnoremap <C-]> :LspDefinition<CR>
nnoremap gr :LspReferences<CR>
nnoremap <C-n> :LspNextError<CR>
nnoremap <C-p> :LspPreviousError<CR>
nnoremap gI :LspImplementation<CR>
nnoremap ga :LspCodeAction<CR>
nnoremap gR :LspRename<CR>
nnoremap go :LspDocumentSymbol<CR>
nnoremap gS :LspWorkspaceSymbol<CR>
nnoremap gm :LspSignatureHelp<CR>

map <silent> <leader>cc :TComment<CR>
map <silent> <leader>ff :Files<CR>
map <silent> <leader>fg :GFiles<CR>
map <silent> <leader>tt :terminal<CR>
map <silent> <leader>rf :GoTestFunc<CR>
map <silent> <leader>rp :GoTest<CR>

tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <Esc> <C-\><C-n>

autocmd BufEnter term://* startinsert
autocmd TermOpen term://* startinsert

autocmd FileType ruby setlocal ts=2 sw=2 expandtab
autocmd FileType text setlocal tw=80

highlight link LspErrorHighlight CursorColumn
highlight link LspWarningHighlight CursorColumn
highlight link LspInformationHighlight CursorColumn
highlight link LspHintHighlight CursorColumn

colorscheme material-monokai
