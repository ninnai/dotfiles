set number relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
au BufNewFile, BufRead *.py
    \ set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set laststatus=2

set hlsearch

call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'http://github.com/tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'tc50cal/vim-terminal'
Plug 'preservim/nerdtree'
Plug 'https://github.com/mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='~'
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

set t_Co=256
set background=light
colorscheme PaperColor

"inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<C-space>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
