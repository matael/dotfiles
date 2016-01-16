set nocompatible " improved !
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10

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
Plugin 'bling/vim-airline'
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
" tcomment
Plugin 'tomtom/tcomment_vim'
" nerdtree
Plugin 'scrooloose/nerdtree'
" CtrlP
Plugin 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'
" trailing-whitespaces
Plugin 'bronson/vim-trailing-whitespace'
" vim surround
Plugin 'tpope/vim-surround'
" less css
Plugin 'groenewege/vim-less'
" Solarized
Plugin 'altercation/vim-colors-solarized.git'
" gist
Plugin 'mattn/gist-vim'
" webapi
Plugin 'mattn/webapi-vim'
" YCM
Plugin 'Valloric/YouCompleteMe'
" vim-template
Plugin 'Matael/vim-template'

" TAGS
" easytags
" Plugin 'xolox/vim-easytags'
" tagbar
" Plugin 'majutsushi/tagbar'
" let g:tagbar_left = 1
Plugin 'vim-scripts/taglist.vim'
let Tlist_Use_Right_Window = 1
let tlist_tex_settings = 'latex;l:labels;s:sections;t:subsections;u:subsubsections'
let Tlist_Show_One_File = 1
"set iskeyword=@,48-57,_,-,:,192-255


" delimitMate
Plugin 'Raimondi/delimitMate'

" NrrwRgn
Plugin 'chrisbra/NrrwRgn'

" }}}

call vundle#end()

" GENERAL {{{1

let mapleader = "," 		" leader
syntax on					" syntax
filetype plugin indent on 	" filetype stuff
set fillchars=vert:│    " that's a vertical box-drawing character
set ts=2 					" tabs
set sw=2 					" tabs
set autoindent 				" indentation
set smartindent				" .... intelligente
set textwidth=120 			" 120chars width
set laststatus=2
set foldmethod=marker
set foldcolumn=3
set splitbelow
set splitright
set timeout timeoutlen=1000 ttimeoutlen=100
set nu 						" general numbering
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

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

" invert lines
noremap <Leader>i ddp

" Remap jk to esc
inoremap jj <Esc>

" NERDTree
inoremap <F3> <Esc>:NERDTreeToggle<cr>
nnoremap <F3> :NERDTreeToggle<cr>

" Narrow/Widen emacs-like <F4>
" vnoremap  <F4> y:let [f,s,v]=[&ft,&syn,getregtype('@"')]<CR>:tabnew<CR>Vp:set ft=<c-r>=f<CR> syn=<c-r>=s<CR><CR>:nnoremap <buffer> <F4> :let @"=v<C-r>="<"<CR>CR>gg0@"G$d:q!<C-r>="<"<CR>CR>gvp<CR>
vnoremap  <F4> <Plug>NrrwrgnDo

" Fix whitespaces
"" entire file
noremap <leader>W :FixWhitespace<cr>
"" current line
noremap <leader>w V:FixWhitespace<cr>

" inoremap <F10> <Esc>:TagbarToggle<cr>
" nnoremap <F10> :TagbarToggle<cr>
inoremap <F10> <Esc>:TlistToggle<cr>
nnoremap <F10> :TlistToggle<cr>
autocmd BufWrite * execute 'normal :TListUpdate()'

" ultisnips
" let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsExpandTrigger="œ"
let g:UltiSnipsJumpForwardTrigger="œ"

" color colomn at textwidth
nnoremap <F8> :let &colorcolumn=&textwidth<cr>

" no help, nor ex-mode neither manpages
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
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


nnoremap <silent><c-k> <C-w>k
nnoremap <silent><c-j> <C-w>j
nnoremap <silent><c-l> <C-w>l
nnoremap <silent><c-h> <C-w>h
nnoremap <silent><left> gT
nnoremap <silent><right> gt

" Colors {{{1

set t_Co=256
" colorscheme shblah
syntax enable
set background=dark
colorscheme solarized
" colorscheme jellybeans



"hi SignColumn guifg=#00aaff guibg=#272822 guisp=NONE gui=NONE ctermfg=39 ctermbg=234 cterm=NONE
hi Error guifg=#ffffcd guibg=#ff0000 guisp=#306b8f gui=NONE ctermfg=230 ctermbg=196 cterm=NONE
hi Todo guifg=#ffffcd guibg=#00a2ff guisp=#306b8f gui=NONE ctermfg=230 ctermbg=38 cterm=NONE



" session realted stuff {{{1
fu! RestoreSess()
	if filereadable("SpecificFile")
		execute 'so session.vim'
		if bufexists(1)
			for l in range(1, bufnr('$'))
				if bufwinnr(l) == -1
					exec 'sbuffer ' . l
				endif
			endfor
		endif
	endif
endfunction

autocmd VimEnter * call RestoreSess()

let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
