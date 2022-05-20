" systax

syntax on
syntax enable
filetype indent off
set nosmartindent
set noautoindent


" settings

set wildmenu 

set noswapfile
set nobackup
set undodir=~/.vim/undo
set undofile

set encoding=utf-8

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smarttab
set nu rnu

set scrolloff=5

" searching
set incsearch
set smartcase

" auto groups
""augroup Makefiles
""  autocmd!
""  autocmd BufReadCmd */Makefile setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
""  autocmd BufReadCmd */Makefile echom "You entered Makefile"
""augroup END

" Status line
" ===========
set laststatus=2
set statusline=%{FugitiveStatusline()}
set statusline+=%=
set statusline+=%f
set statusline+=%4l
set statusline+=/
set statusline+=%L


" key mappings
" ============
let mapleader=" "
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 2)<CR>

" special mappings
nnoremap <leader>j ddp
noremap <leader>k ddkP
nnoremap <leader>sn :set rnu!<CR>
nnoremap <leader>ff :F<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>uf :UndotreeFocus<CR>



" plugins
" =======
" (with vim-plug)
call plug#begin('~/.vim/vimplug')

Plug 'mbbill/undotree'
Plug 'vifm/vifm.vim'
Plug 'terryma/vim-smooth-scroll'
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'binerystorm/Spairs'
Plug 'tpope/vim-dispatch'
if (isdirectory(expand("~/scripts/vimplugins/")))
  Plug '~/scripts/vimplugins/scratch'
else
  echom "You don't have a ~/scripts/vimplugins directory"
endif

call plug#end()

" Colors
" ======

hi QuickFixLine ctermbg=8


" global vars
" ===========

" vifm
let g:vifm_embed_split=1
