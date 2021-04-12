hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="verdurous"
set background=dark

" Quick reference palette:
" 0:  "#22262A"
" 1:  "#BF4052"
" 2:  "#00AF60"
" 3:  "#B57C65"
" 4:  "#5A89AD"
" 5:  "#8558C7"
" 6:  "#109191"
" 7:  "#808892"
" 8:  "#384048"
" 9:  "#E04F86"
" 10: "#80D468"
" 11: "#FFFFAF"
" 12: "#87B4E0"
" 13: "#D668E1"
" 14: "#5BDDD0"
" 15: "#F1E6D9"

" From the preffered group names (see :help group-name):
hi Comment      ctermfg=7    ctermbg=NONE cterm=italic            guifg=#808892 guibg=NONE    gui=italic

hi Constant     ctermfg=2    ctermbg=NONE cterm=NONE              guifg=#00AF60 guibg=NONE    gui=NONE
hi! link String Constant
hi! link Character Constant
hi Number       ctermfg=10   ctermbg=NONE cterm=NONE              guifg=#80D468 guibg=NONE    gui=NONE
hi Boolean      ctermfg=5    ctermbg=NONE cterm=italic            guifg=#8558C7 guibg=NONE    gui=italic
hi! link Float Number

hi Identifier   ctermfg=12    ctermbg=NONE cterm=NONE             guifg=#87B4E0 guibg=NONE    gui=NONE
hi Function     ctermfg=4     ctermbg=NONE cterm=NONE             guifg=#5A89AD guibg=NONE    gui=NONE

hi Statement    ctermfg=6    ctermbg=NONE cterm=NONE              guifg=#109191 guibg=NONE    gui=NONE
hi! link Conditional Statement
hi! link Repeat      Statement
hi! link Label       Statement
hi! link Operator    Statement
hi! link Keyword     Statement
hi! link Exception   Statement

hi PreProc      ctermfg=14   ctermbg=NONE cterm=NONE              guifg=#5BDDD0 guibg=NONE    gui=NONE
hi! link Include   PreProc
hi! link Define    PreProc
hi! link Macro     PreProc
hi! link PreCondit PreProc

hi Type         ctermfg=5    ctermbg=NONE cterm=NONE              guifg=#8558C7 guibg=NONE    gui=NONE
hi! link StorageClass Type
hi! link Structure    Type
hi! link Typedef      Type

hi Special      ctermfg=9    ctermbg=NONE cterm=NONE              guifg=#E04F86 guibg=NONE    gui=NONE
hi! link SpecialChar    Special
hi! link Tag            Special
hi! link Delimiter      Special
hi! link SpecialComment Special
hi! link Debug          Special

hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline         guifg=NONE    guibg=NONE    gui=underline

hi Ignore       ctermfg=NONE ctermbg=8    cterm=NONE              guifg=NONE    guibg=#384048 gui=NONE

hi Error        ctermfg=1    ctermbg=NONE cterm=NONE              guifg=#BF4052 guibg=NONE    gui=NONE

hi Todo         ctermfg=0    ctermbg=10   cterm=NONE              guifg=#22262A guibg=#80D468 gui=NONE

" Other common highlight groups.
hi ColorColumn  ctermfg=NONE ctermbg=8    cterm=NONE              guifg=NONE    guibg=#384048 gui=NONE
hi Conceal      ctermfg=7    ctermbg=NONE cterm=NONE              guifg=#808892 guibg=NONE    gui=NONE
hi Cursor       ctermfg=NONE ctermbg=NONE cterm=reverse           guifg=NONE    guibg=NONE    gui=reverse
hi CursorColumn ctermfg=NONE ctermbg=8    cterm=NONE              guifg=NONE    guibg=#384048 gui=NONE
hi CursorLine   ctermfg=NONE ctermbg=8    cterm=NONE              guifg=NONE    guibg=#384048 gui=NONE
hi CursorLineNR ctermfg=4    ctermbg=NONE cterm=NONE              guifg=#5A89AD guibg=NONE    gui=NONE
hi DiffAdd      ctermfg=2    ctermbg=NONE cterm=NONE              guifg=#00AF60 guibg=NONE    gui=NONE
hi DiffChange   ctermfg=11   ctermbg=NONE cterm=NONE              guifg=#FFFFAF guibg=NONE    gui=NONE
hi DiffDelete   ctermfg=1    ctermbg=NONE cterm=NONE              guifg=#BF4052 guibg=NONE    gui=NONE
hi DiffText     ctermfg=9    ctermbg=NONE cterm=NONE              guifg=#E04F86 guibg=NONE    gui=NONE
hi Directory    ctermfg=4    ctermbg=NONE cterm=bold              guifg=#5A89AD guibg=NONE    gui=bold
hi EndOfBuffer  ctermfg=4    ctermbg=NONE cterm=NONE              guifg=#5A89AD guibg=NONE    gui=NONE
hi ErrorMsg     ctermfg=15   ctermbg=1    cterm=NONE              guifg=#F1E6D9 guibg=#BF4052 gui=NONE
hi FoldColumn   ctermfg=15   ctermbg=8    cterm=NONE              guifg=#F1E6D9 guibg=#384048 gui=NONE
hi Folded       ctermfg=15   ctermbg=8    cterm=NONE              guifg=#F1E6D9 guibg=#384048 gui=NONE
hi IncSearch    ctermfg=0    ctermbg=11   cterm=NONE              guifg=#22262A guibg=#FFFFAF gui=NONE
hi LineNr       ctermfg=4    ctermbg=NONE cterm=NONE              guifg=#5A89AD guibg=NONE    gui=NONE 
hi MatchParen   ctermfg=NONE ctermbg=NONE cterm=NONE              guifg=NONE    guibg=NONE    gui=NONE
hi ModeMsg      ctermfg=NONE ctermbg=NONE cterm=bold              guifg=NONE    guibg=NONE    gui=bold
hi MoreMsg      ctermfg=2    ctermbg=NONE cterm=NONE              guifg=#00AF60 guibg=NONE    gui=NONE
hi NonText      ctermfg=8    ctermbg=NONE cterm=NONE              guifg=#384048 guibg=NONE    gui=NONE
hi Pmenu        ctermfg=15   ctermbg=8    cterm=NONE              guifg=#F1E6D9 guibg=#384048 gui=NONE
hi PmenuSbar    ctermfg=7    ctermbg=8    cterm=NONE              guifg=#808892 guibg=#384048 gui=NONE
hi PmenuSel     ctermfg=15   ctermbg=4    cterm=NONE              guifg=#F1E6D9 guibg=#5A89AD gui=NONE
hi PmenuThumb   ctermfg=15   ctermbg=7    cterm=NONE              guifg=#F1E6D9 guibg=#808892 gui=NONE
hi Question     ctermfg=2    ctermbg=NONE cterm=NONE              guifg=#00AF60 guibg=NONE    gui=NONE
hi Search       ctermfg=0    ctermbg=11   cterm=NONE              guifg=#22262A guibg=#FFFFAF gui=NONE
hi SignColumn   ctermfg=7    ctermbg=0    cterm=NONE              guifg=#808892 guibg=#22262A gui=NONE
hi SpecialKey   ctermfg=13   ctermbg=NONE cterm=NONE              guifg=#D668E1 guibg=NONE    gui=NONE
hi SpellBad     ctermfg=NONE ctermbg=NONE cterm=underline         guifg=NONE    guibg=NONE    gui=undercurl guisp=#BF4052
hi SpellCap     ctermfg=NONE ctermbg=NONE cterm=underline         guifg=NONE    guibg=NONE    gui=undercurl guisp=#5A89AD
hi SpellLocal   ctermfg=NONE ctermbg=NONE cterm=underline         guifg=NONE    guibg=NONE    gui=undercurl guisp=#109191
hi SpellRare    ctermfg=NONE ctermbg=NONE cterm=underline         guifg=NONE    guibg=NONE    gui=undercurl guisp=#8558C7
hi StatusLine   ctermfg=15   ctermbg=4    cterm=bold              guifg=#F1E6D9 guibg=#5A89AD gui=bold
hi StatusLineNC	ctermfg=12   ctermbg=4    cterm=bold              guifg=#87B4E0 guibg=#5A89AD gui=bold
hi TabLine      ctermfg=15   ctermbg=8    cterm=NONE              guifg=#F1E6D9 guibg=#384048 gui=NONE
hi TabLineFill  ctermfg=15   ctermbg=8    cterm=NONE              guifg=#F1E6D9 guibg=#384048 gui=NONE
hi TabLineSel   ctermfg=15   ctermbg=7    cterm=NONE              guifg=#F1E6D9 guibg=#808892 gui=NONE
hi TermCursor   ctermfg=NONE ctermbg=NONE cterm=reverse           guifg=NONE    guibg=NONE    gui=reverse
hi TermCursorNC ctermfg=NONE ctermbg=NONE cterm=reverse           guifg=NONE    guibg=NONE    gui=reverse
hi Title        ctermfg=5    ctermbg=NONE cterm=NONE              guifg=#8558C7 guibg=NONE    gui=NONE
hi VertSplit    ctermfg=8    ctermbg=7    cterm=NONE              guifg=#384048 guibg=#808892 gui=NONE
hi Visual       ctermfg=NONE ctermbg=NONE cterm=reverse           guifg=NONE    guibg=NONE    gui=reverse
hi VisualNOS    ctermfg=NONE ctermbg=NONE cterm=reverse,underline guifg=NONE    guibg=NONE    gui=reverse,underline
hi WarningMsg   ctermfg=11   ctermbg=NONE cterm=NONE              guifg=#FFFFAF guibg=NONE    gui=NONE
hi Whitespace   ctermfg=8    ctermbg=NONE cterm=NONE              guifg=#000000 guibg=NONE    gui=NONE
hi WildMenu     ctermfg=0    ctermbg=4    cterm=NONE              guifg=#22262A guibg=#5A89AD gui=NONE
