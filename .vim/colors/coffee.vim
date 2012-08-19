" Vim color file - coffee
" Generated by http://bytefluent.com/vivify 2012-08-18
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "coffee"

hi IncSearch guifg=#fff0d6 guibg=#000000 guisp=#000000 gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi SpecialComment guifg=#eeffee guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi Typedef guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Title guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Folded guifg=#88c0c7 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#85ff85 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi Include guifg=#85ff85 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#a4b1bd guibg=#395956 guisp=#395956 gui=NONE ctermfg=109 ctermbg=66 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#61616d guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#880000 guibg=#70695e guisp=#70695e gui=NONE ctermfg=88 ctermbg=242 cterm=NONE
hi ErrorMsg guifg=#ffffff guibg=#880000 guisp=#880000 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE
hi Ignore guifg=#b0a594 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Debug guifg=#eeffee guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Identifier guifg=#cc7c3d guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#eeffee guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi Conditional guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Todo guifg=#fff300 guibg=#aa0006 guisp=#aa0006 gui=NONE ctermfg=11 ctermbg=124 cterm=NONE
hi Special guifg=#eeffee guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ffff21 guibg=#000000 guisp=#000000 gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#deefff guibg=#000000 guisp=#000000 gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Normal guifg=#b0a594 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Label guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#deefff guibg=#000000 guisp=#000000 gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Search guifg=#fff0d6 guibg=#000000 guisp=#000000 gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#eeffee guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi Statement guifg=#effec5 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#1a1813 guibg=NONE guisp=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE
hi Character guifg=#cefece guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
"hi Float -- no settings --
hi Number guifg=#cefece guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi Boolean guifg=#effec5 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Operator guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#b0a594 guibg=#2e2b26 guisp=#2e2b26 gui=NONE ctermfg=144 ctermbg=236 cterm=NONE
hi ModeMsg guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
"hi CursorColumn -- no settings --
hi Define guifg=#85ff85 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi Function guifg=#cc7c3d guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#88c0c7 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi PreProc guifg=#85ff85 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#fff0d6 guibg=#000000 guisp=#000000 gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=#a4b1bd guibg=#395956 guisp=#395956 gui=NONE ctermfg=109 ctermbg=66 cterm=NONE
hi Exception guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Keyword guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Type guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#b0a594 guibg=#70695e guisp=#70695e gui=NONE ctermfg=144 ctermbg=242 cterm=NONE
hi Cursor guifg=NONE guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#ff4c4a guibg=NONE guisp=NONE gui=NONE ctermfg=203 ctermbg=NONE cterm=NONE
hi PMenu guifg=#a4b1bd guibg=#395956 guisp=#395956 gui=NONE ctermfg=109 ctermbg=66 cterm=NONE
hi SpecialKey guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Constant guifg=#cefece guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#eeffee guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi String guifg=#cefece guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#ffff21 guisp=#ffff21 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
hi Repeat guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Structure guifg=#c6feeb guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Macro guifg=#85ff85 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi Underlined guifg=#ffffff guibg=NONE guisp=NONE gui=underline ctermfg=15 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#9e9485 guisp=#9e9485 gui=NONE ctermfg=NONE ctermbg=144 cterm=NONE
"hi TabLine -- no settings --
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=NONE guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi cursorim guifg=#f8f8f8 guibg=#8000ff guisp=#8000ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user1 guifg=#ffffff guibg=#0000df guisp=#0000df gui=NONE ctermfg=15 ctermbg=20 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi cdefine guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi cinclude guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi htmlboldunderlineitalic guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
"hi htmlbolditalic -- no settings --
"hi htmlbold -- no settings --
hi htmlboldunderline guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi taglistcomment guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi taglisttitle guifg=#ff00af guibg=#000000 guisp=#000000 gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi user4 guifg=#00ffdf guibg=#0000df guisp=#0000df gui=NONE ctermfg=50 ctermbg=20 cterm=NONE
hi user5 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user3 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi taglistfilename guifg=#ffffff guibg=#870087 guisp=#870087 gui=NONE ctermfg=15 ctermbg=90 cterm=NONE
hi taglisttagscope guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi constant guifg=#007068 guibg=#e0e0e0 guisp=#e0e0e0 gui=NONE ctermfg=6 ctermbg=254 cterm=NONE
hi cterm=.((s:fontface==plain) ? none : bold) guifg=#efface guibg=#efface guisp=#efface gui=NONE ctermfg=230 ctermbg=230 cterm=NONE
hi incsearch guifg=#f0f0f0 guibg=#806060 guisp=#806060 gui=NONE ctermfg=255 ctermbg=95 cterm=NONE
hi cterm_style guifg=#efface guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi moremsg guifg=#489000 guibg=#e0e0e0 guisp=#e0e0e0 gui=NONE ctermfg=64 ctermbg=254 cterm=NONE
hi preproc guifg=#009030 guibg=#e0e0e0 guisp=#e0e0e0 gui=NONE ctermfg=28 ctermbg=254 cterm=NONE
"hi texmath -- no settings --
hi vimoption guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi vimerror guifg=#ff0000 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi cincluded guifg=#9acd32 guibg=NONE guisp=NONE gui=NONE ctermfg=149 ctermbg=NONE cterm=NONE
hi texsection guifg=#adff2f guibg=NONE guisp=NONE gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi texmatcher guifg=#9acd32 guibg=NONE guisp=NONE gui=NONE ctermfg=149 ctermbg=NONE cterm=NONE
hi match guifg=#ffff00 guibg=#0000ff guisp=#0000ff gui=bold ctermfg=11 ctermbg=21 cterm=bold
hi pythonbuiltin guifg=#839496 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi phpstringdouble guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi javascriptstrings guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi phpstringsingle guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi debugstop guifg=#ffffff guibg=#90ee90 guisp=#90ee90 gui=NONE ctermfg=15 ctermbg=120 cterm=NONE
hi debugbreak guifg=#ffffff guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE
hi cursor guifg=NONE guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
