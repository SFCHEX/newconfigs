set number relativenumber
set noswapfile
set nocompatible              " required
filetype off                  " required
"set showtabline=0
set hidden 
set autoindent
set guicursor=
set syntax
set scrolloff=50
set expandtab
set termguicolors
" In your init.{vim|lua}

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling
Plug 'thaerkh/vim-indentguides'           " Visual representation of indents
Plug 'metakirby5/codi.vim'
Plug 'morhetz/gruvbox'
Plug 'jmcantrell/vim-virtualenv'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()
colorscheme nord
set mouse=a
set cursorline
:nmap <space>e :CocCommand explorer<CR>
:nmap ZE :q!<CR>
" - Popup window (anchored to the bottom of the current window)
:nmap <C-p> :FZF <CR>
:nmap <C-o> :Rg <CR>
map <S-y> :tabnew<CR>
map <S-n> :tabn<CR>
map ZW :wq!<CR>
map <c-s> :w<CR>

set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar

set encoding=utf-8

scriptencoding utf-8

let g:fzf_layout = { 'down': '~40%' }
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Comment'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

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

" Switch to English - mapping
nnoremap <Leader>e :<C-U>call EngType()<CR>
nnoremap <Tab> :bnext<CR>
" Switch to Arabic - mapping
nnoremap <Leader>a :<C-U>call AraType()<CR>

" Switch to English - function
function! EngType()
" To switch back from Arabic
  set keymap= " Restore default (US) keyboard layout
  set norightleft
endfunction

" Switch to Arabic - function
function! AraType()
    set keymap=arabic "Modified keymap. File in ~/.vim/keymap/
    set rightleft
endfunction


hi Normal guibg=NONE ctermbg=NONE


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:user_emmet_mode="n"
let g:user_emmet_leader_key=","
let g:user_emmet_install_global = 0


