"""""""""""""""""""""""
"  Restructured Text  "
"""""""""""""""""""""""

" turn the current line into a ReST main title
" (overlined and underlined)
function! TurnIntoRSTSection()
    normal yyp
    s/./=/g
    -1
endfunc

" idem for subsections ;)
function! TurnIntoRSTSubsection()
    normal yyp
    s/./-/g
    -1
endfunc

" idem for subsubsections ;)
function! TurnIntoRSTSubsubsection()
    normal yyp
    s/./\~/g
    -1
endfunc

" idem for paragraphs ;)
function! TurnIntoRSTParagraph()
    normal yyp
    s/./*/g
    -1
endfunc

noremap <Leader><up> :call TurnIntoRSTSection()<cr>
noremap <Leader><right> :call TurnIntoRSTSubsection()<cr>
noremap <Leader><down> :call TurnIntoRSTSubsubsection()<cr>
noremap <Leader><left> :call TurnIntoRSTParagraph()<cr>
