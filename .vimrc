set nocompatible " improved !
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:Powerline_symbols = 'fancy'

" Vundle {{{1
filetype off " required

" Vundle dir
set rtp+=~/.vim/bundle/vundle/
" init
call vundle#rc()

" Plugins {{{2

" vundle
Bundle 'gmarik/vundle'
" vim-fugitive
Bundle 'tpope/vim-fugitive'
" " snipMate
Bundle 'ervandew/snipmate.vim'
" powerline
Bundle "Lokaltog/vim-powerline"
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
"" tcomment
Bundle 'tomtom/tcomment_vim'
" nerdtree
Bundle 'scrooloose/nerdtree'
" trailing-whitespaces
Bundle 'bronson/vim-trailing-whitespace'
" syntastic
Bundle 'scrooloose/syntastic'
" vim surround
Bundle 'tpope/vim-surround'
" less css
Bundle 'groenewege/vim-less'
" Solarized
Bundle 'altercation/vim-colors-solarized.git'
" vim wiki
Bundle 'vimwiki'
" gist
Bundle 'mattn/gist-vim'
" webapi
Bundle 'mattn/webapi-vim'
" supertab
Bundle 'ervandew/supertab'
" vim-template
Bundle 'Matael/vim-template'

" TAGS
" easytags
Bundle 'xolox/vim-easytags'
" tagbar
Bundle 'majutsushi/tagbar'
let g:tagbar_left = 1


" }}}

" GENERAL {{{1

let mapleader = "," 		" leader
syntax on					" syntax
filetype plugin indent on 	" filetype stuff
set fillchars=vert:│    " that's a vertical box-drawing character
set ts=4 					" tabs
set sw=4 					" tabs
set autoindent 				" indentation
set smartindent				" .... intelligente
set textwidth=120 			" 120chars width
set laststatus=2
set foldmethod=marker
set foldcolumn=3
" Is there trailing whitespaces (powerline)
" Statusline (if not powerline, use that ;))
"set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

set timeout timeoutlen=1000 ttimeoutlen=100

" Numbering {{{1
set nu 						" general numbering

" change between relative and absolute while
" switching modes or with <F6>
" NumberToggle {{{2
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc
" }}}
nnoremap <F6> :call NumberToggle()<cr>
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Binding file extensions and types {{{1

" Processing
au BufNewFile,BufRead *.pde setf processing
" Arduino (>v1.0.0)
au BufNewFile,BufRead *.ino setf arduino
" Markdown
au BufNewFile,BufRead *.mkd setf mkd

" Syntastic + colors {{{1

let g:syntastic_check_on_open=0
let g:syntastic_mode_map = {'mode': 'passive'}

" FocusMode {{{1

function! ToggleFocusMode()
	if (&foldcolumn != 12)
		set laststatus=0
		set numberwidth=10
		set foldcolumn=12
		set noruler
		hi FoldColumn ctermbg=none
		"hi LineNr ctermfg=0 ctermbg=none
		hi NonText ctermfg=0
	else
		set laststatus=2
		set numberwidth=4
		set foldcolumn=0
		set ruler
	endif
endfunc
" Bind focus mode to <F2>
map <F2> :call ToggleFocusMode()<cr>


" MAPPINGS {{{1

" invert lines
noremap <Leader>i ddp

" Remap jj to esc
inoremap jj <Esc>

" NERDTree
inoremap <F3> <Esc>:NERDTreeToggle<cr>
nnoremap <F3> :NERDTreeToggle<cr>

" Narrow/Widen emacs-like <F4>
vnoremap  <F4> y:let [f,s,v]=[&ft,&syn,getregtype('@"')]<CR>:tabnew<CR>Vp:set ft=<c-r>=f<CR> syn=<c-r>=s<CR><CR>:nnoremap <buffer> <F4> :let @"=v<C-r>="<"<CR>CR>gg0@"G$d:q!<C-r>="<"<CR>CR>gvp<CR>

" Fix whitespaces
"" entire file
noremap <leader>W :FixWhitespace<cr>
"" current line
noremap <leader>w V:FixWhitespace<cr>

inoremap <F10> <Esc>:TagbarToggle<cr>
nnoremap <F10> :TagbarToggle<cr>

nnoremap <leader>t :split<cr>:resize 20<cr>'T

" Arrow keys {{{1

" Don't move around with arrows
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Colors {{{1

" set t_Co=256
" colorscheme mine
syntax enable
set background=dark
colorscheme solarized



"hi SignColumn guifg=#00aaff guibg=#272822 guisp=NONE gui=NONE ctermfg=39 ctermbg=234 cterm=NONE
hi Error guifg=#ffffcd guibg=#ff0000 guisp=#306b8f gui=NONE ctermfg=230 ctermbg=196 cterm=NONE
hi Todo guifg=#ffffcd guibg=#00a2ff guisp=#306b8f gui=NONE ctermfg=230 ctermbg=38 cterm=NONE
