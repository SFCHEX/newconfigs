set number relativenumber
set noswapfile
set nocompatible              " required
filetype off                  " required
set hidden
set autoindent
set guicursor=
set syntax
set showtabline=0
set scrolloff=50
set expandtab
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling
Plug 'thaerkh/vim-indentguides'           " Visual representation of indents
Plug 'morhetz/gruvbox'
Plug 'jmcantrell/vim-virtualenv'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()




set mouse=a
au BufReadPost,BufNewFile *.js,*.ts, Codi 
colorscheme nord 
set cursorline
:nmap <Space>e :CocCommand explorer --width 30<CR>
map <S-y> :tabnew<CR>
map <S-n> :tabn<CR>
inoremap jh <Esc>
map ZW :wq!<CR>
map <c-s> :w<CR>

set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar

set encoding=utf-8
scriptencoding utf-8

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ 'active': {
   \   'left': [ [ 'mode', 'paste' ],
   \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
   \ },
   \ 'component_function': {
   \   'cocstatus': 'coc#status',
   \   'currentfunction': 'CocCurrentFunction'
   \ },
   \ }

