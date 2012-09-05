set nocompatible " improved !
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:Powerline_symbols = 'fancy'

""""""""""""
"  VUNDLE  "
""""""""""""
filetype off " required

" Vundle dir
set rtp+=~/.vim/bundle/vundle/
" init
call vundle#rc()

" Plugins
" """""""

" vundle
Bundle 'gmarik/vundle'
" vim-fugitive
Bundle 'tpope/vim-fugitive'
" snipMate
Bundle 'msanders/snipmate.vim'
" powerline
Bundle "Lokaltog/vim-powerline"
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
"" tcomment
Bundle 'tomtom/tcomment_vim'
" vim-notes
Bundle 'xolox/vim-notes'
" nerdtree
Bundle 'scrooloose/nerdtree'
" trailing-whitespaces
Bundle 'bronson/vim-trailing-whitespace'
" command-t
Bundle 'git://git.wincent.com/command-t.git'
" syntastic
Bundle 'scrooloose/syntastic'
" vim surround
Bundle 'tpope/vim-surround'
" dwm.vim
Bundle 'spolu/dwm.vim'

"""""""""""""
"  GENERAL  "
"""""""""""""

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
" default colorscheme, but dark line num
hi LineNr ctermfg=0
" Is there trailing whitespaces (powerline)
" Statusline (if not powerline, use that ;))
"set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


" Numbering
" """""""""
set nu 						" general numbering
" change between relative and absolute while
" switching modes or with C-n
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
nnoremap <C-n> :call NumberToggle()<cr>

" Binding file extensions and types
" """""""""""""""""""""""""""""""""

" Processing
au BufNewFile,BufRead *.pde setf processing
" Arduino (>v1.0.0)
au BufNewFile,BufRead *.ino setf arduino
" Markdown
au BufNewFile,BufRead *.mkd setf mkd

" Syntastic + colors
" """"""""""""""""""
"
let g:syntastic_check_on_open=1

" FocusMode
" """""""""
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


""""""""""""""
"  MAPPINGS  "
""""""""""""""

" invert lines
noremap <Leader>i ddp

" Remap jj to esc
inoremap jj <Esc>

" NERDTree
inoremap <F3> <Esc>:NERDTreeToggle<cr>
nnoremap <F3> :NERDTreeToggle<cr>

" Narrow/Widen emacs-like
vnoremap  <F4> y:let [f,s,v]=[&ft,&syn,getregtype('@"')]<CR>:tabnew<CR>Vp:set ft=<c-r>=f<CR> syn=<c-r>=s<CR><CR>:nnoremap <buffer> <F4> :let @"=v<C-r>="<"<CR>CR>gg0@"G$d:q!<C-r>="<"<CR>CR>gvp<CR>

" Fix whitespaces
"" entire file
noremap <leader>W :FixWhitespace<cr>
"" current line
noremap <leader>w V:FixWhitespace<cr>


" Arrow keys
" """"""""""

" Don't move around with arrows
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Colors
" """"""

hi SignColumn guifg=#00aaff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Error guifg=#ffffcd guibg=#ff0000 guisp=#306b8f gui=NONE ctermfg=230 ctermbg=196 cterm=NONE
hi Todo guifg=#ffffcd guibg=#306b8f guisp=#306b8f gui=NONE ctermfg=230 ctermbg=24 cterm=NONE
