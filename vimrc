set nocompatible " improved !

let g:python_host_prog = '/bin/python2'

" Vim-Plug {{{1
" Auto install plug if it's not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plug 'arcticicestudio/nord-vim'
Plug 'matael/nord-vim'
let g:nord_comment_brightness = 12
let g:nord_uniform_status_lines = 1
let g:nord_italic_comments = 1
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_cursor_line_number_background = 1

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'nord'
let g:airline#extensions#tabline#enabled = 1

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'

Plug 'tpope/vim-dispatch'
Plug 'rhysd/unite.vim'
Plug 'matze/vim-move'

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeTabsToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeTabsToggle'}
Plug 'jistr/vim-nerdtree-tabs', {'on': 'NERDTreeTabsToggle'}
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'bronson/vim-trailing-whitespace'

Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Matael/vim-template'

Plug 'rhysd/vim-grammarous', {'for': ['tex', 'rst', 'markdown', 'latex']}
let g:grammarous#use_vim_spelllang = 1
let g:grammarous#show_first_error = 1

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
let g:ycm_global_ycm_extra_conf = '~/useful/dotfiles/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
let g:signify_vcs_list = ['git']

Plug 'Konfekt/FastFold' | Plug 'tmhedberg/SimpylFold'
Plug 'djoshea/vim-matlab-fold', {'for': 'matlab'}
Plug 'Matael/tex-conceal.vim', {'for': ['tex', 'latex']}
Plug 'matze/vim-tex-fold', {'for': ['tex', 'latex']}
let g:tex_fold_additional_envs = ['tikzpicture', 'tabular']
Plug 'holomorph/vim-freefem', {'for': ['edp']}
Plug 'sirtaj/vim-openscad', {'for': ['scad']}

Plug 'sheerun/vim-polyglot'
Plug 'nvie/vim-flake8', {'for': 'python', 'on': 'Flake8'}

" vim-tweaks
Plug 'Matael/vim-tweaks'

call plug#end()
" }}}

" GENERAL {{{1

let mapleader = "," 		" leader
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
set nojoinspaces
set encoding=utf-8
set spelllang=en_gb
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END


" Binding file extensions and types {{{1

au BufNewFile,BufRead *.ino setf arduino
au BufNewFile,BufRead *.tex set ft=tex


" MAPPINGS {{{1

" awesome leader trick
map <space> <leader>
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

" Remap hj to esc
inoremap hj <Esc>

" NERDTree
inoremap <F3> <Esc>:NERDTreeTabsToggle<cr>
nnoremap <F3> :NERDTreeTabsToggle<cr>
inoremap <F5> <Esc>:UndotreeToggle<cr>
nnoremap <F5> :UndotreeToggle<cr>
inoremap <F7> <Esc>:w<cr>:make<cr><cr>
nnoremap <F7> :w<cr>:make<cr><cr>
nnoremap <F9> :YcmCompleter FixIt<CR>
nnoremap <F8> <Plug>(grammarous-fixit)<CR>
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
let g:UltiSnipsJumpForwardTrigger="<C-s>"


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

" set termguicolors
colorscheme nord
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark

hi Error guifg=#ffffcd guibg=#ff0000 guisp=#306b8f gui=NONE ctermfg=230 ctermbg=196 cterm=NONE
hi Todo guifg=#ffffcd guibg=#00a2ff guisp=#306b8f gui=NONE ctermfg=230 ctermbg=38 cterm=NONE
hi! link Folded Operator
hi! link FoldColumn Operator
hi! link Conceal texString

syn keyword pDebug contained DEBUG
hi def link pDebug Error

function! SynGroup()
	let l:s = synID(line('.'), col('.'), 1)
	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
