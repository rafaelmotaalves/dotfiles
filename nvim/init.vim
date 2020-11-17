let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

set tabstop=4
set shiftwidth=4
set expandtab
set number

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

map <leader>nt :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

call plug#begin()
Plug 'bronson/vim-trailing-whitespace'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'preservim/nerdtree'

Plug 'christoomey/vim-tmux-navigator'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
