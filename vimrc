set nocompatible " improved !

let g:python_host_prog = '/bin/python2'

" Vundle {{{1
filetype off " required

" Vundle dir
set rtp+=~/.vim/bundle/Vundle.vim
" init
call vundle#begin()

" Plugins {{{2

" vundle
Plugin 'gmarik/Vundle.vim'
" vim-fugitive
Plugin 'tpope/vim-fugitive'
" snipMate
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
" tcomment
Plugin 'tomtom/tcomment_vim'
" nerdtree
Plugin 'scrooloose/nerdtree'
" nerdtree git
Plugin 'Xuyuanp/nerdtree-git-plugin'
" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'
" trailing-whitespaces
Plugin 'bronson/vim-trailing-whitespace'
" vim surround
Plugin 'tpope/vim-surround'
" Dispatch
Plugin 'tpope/vim-dispatch'
" Solarized
" Plugin 'altercation/vim-colors-solarized.git'
Plugin 'arcticicestudio/nord-vim'
" YCM
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/useful/dotfiles/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

Plugin 'Matael/vim-template'
" undotree
Plugin 'mbbill/undotree'
Plugin 'Matael/tex-conceal.vim'
Plugin 'matze/vim-tex-fold'
let g:tex_fold_additional_envs = ['tikzpicture', 'tabular']
" Plugin 'klen/python-mode'
" let g:pymode_lint_ignore='E501,E225,E226,E228'
" let g:pymode_options_max_line_length=160
" let g:pymode_lint_cwindow = 1
"
" Plugin 'janko-m/vim-test'
" let test#python#runner='nose'
" let test#strategy='dispatch'

Plugin 'majutsushi/tagbar'
" Plugin 'tpope/vim-sleuth'
" delimitMate
Plugin 'Raimondi/delimitMate'
" FreeFEM++
Plugin 'freefem.vim'
Plugin 'cmake.vim'
" vim-tweaks
Plugin 'Matael/vim-tweaks'

Plugin 'mikewest/vimroom'

Plugin 'rhysd/vim-grammarous'
Plugin 'rhysd/unite.vim'
Plugin 'matze/vim-move'

Plugin 'voxpupuli/vim-puppet'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'nvie/vim-flake8'

Plugin 'djoshea/vim-matlab-fold'

" }}}

call vundle#end()

" GENERAL {{{1

let mapleader = "," 		" leader
syntax on					" syntax
filetype plugin indent on 	" filetype stuff
set fillchars=vert:│    " that's a vertical box-drawing character
set ts=2 					" tabs
set sw=2 					" tabs
set noet
set autoindent 				" indentation
set smartindent				" .... intelligente
set textwidth=90 			" 90chars width
set laststatus=2
set foldmethod=marker
set foldcolumn=3
set nohlsearch
set splitbelow
set splitright
set timeout timeoutlen=1000 ttimeoutlen=100
set nu 						" general numbering
set undofile
set undodir=~/.vim/undodir
set mouse=
set encoding=utf-8
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END


" Binding file extensions and types {{{1

" Processing
au BufNewFile,BufRead *.pde setf processing
" Arduino (>v1.0.0)
au BufNewFile,BufRead *.ino setf arduino
" Markdown
au BufNewFile,BufRead *.mkd setf mkd
" latex
au BufNewFile,BufRead *.tex set ft=tex
" SBT/Scala integration
set errorformat=%E\ %#[error]\ %#%f:%l:\ %m,%-Z\ %#[error]\ %p^,%-C\ %#[error]\ %m
set errorformat+=,%W\ %#[warn]\ %#%f:%l:\ %m,%-Z\ %#[warn]\ %p^,%-C\ %#[warn]\ %m
set errorformat+=,%-G%.%#
noremap <silent> <Leader>ff :cf /tmp/sbt.quickfix<CR>
noremap <silent> <Leader>fn :cn<CR>



" MAPPINGS {{{1

" never show help. never, ever.
nnoremap <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
vnoremap Q <nop>
vnoremap K <nop>

" invert lines
noremap <Leader>i ddp

" Remap jk to esc
inoremap jk <Esc>

" NERDTree
inoremap <F3> <Esc>:NERDTreeTabsToggle<cr>
nnoremap <F3> :NERDTreeTabsToggle<cr>
inoremap <F5> <Esc>:UndotreeToggle<cr>
nnoremap <F5> :UndotreeToggle<cr>
inoremap <F7> <Esc>:w<cr>:make<cr><cr>
nnoremap <F7> :w<cr>:make<cr><cr>
nnoremap <F9> :YcmCompleter FixIt<CR>
inoremap <F10> <Esc>:TagbarToggle<cr>
nnoremap <F10> :TagbarToggle<cr>

vnoremap <F9> :'<,'>normal :YcmCompleter FixIt<CR>
" Fix whitespaces
"" entire file
noremap <leader>W :FixWhitespace<cr>
"" current line
noremap <leader>w V:FixWhitespace<cr>


" ultisnips
" let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsExpandTrigger="<C-z>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"

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


nnoremap <silent><C-k> <C-w>k
nnoremap <silent><C-j> <C-w>j
nnoremap <silent><C-l> <C-w>l
nnoremap <silent><C-h> <C-w>h
inoremap <silent><Left> <Esc>:bp<CR>
inoremap <silent><Right> <Esc>:bn<CR>
nnoremap <silent><Left> :bp<CR>
nnoremap <silent><Right> :bn<CR>
inoremap <silent><Up> <Esc>gT
inoremap <silent><Down> <Esc>gt
nnoremap <silent><Up> gT
nnoremap <silent><Down> gt

" Colors {{{1

set t_Co=256
" colorscheme shblah
syntax enable
set background=dark
colorscheme nord
" colorscheme jellybeans



"hi SignColumn guifg=#00aaff guibg=#272822 guisp=NONE gui=NONE ctermfg=39 ctermbg=234 cterm=NONE
hi Error guifg=#ffffcd guibg=#ff0000 guisp=#306b8f gui=NONE ctermfg=230 ctermbg=196 cterm=NONE
hi Todo guifg=#ffffcd guibg=#00a2ff guisp=#306b8f gui=NONE ctermfg=230 ctermbg=38 cterm=NONE
hi! link Folded SpecialComment
hi! link Conceal texString
hi SpellBad cterm=underline ctermfg=1

syn keyword pDebug contained DEBUG Debug debug
hi def link pDebug Error

function! SynGroup()
	let l:s = synID(line('.'), col('.'), 1)
	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
