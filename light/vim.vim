hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="verdurous-light"
set background=light

let g:palette={
    \ 'bg': '#F1E6D9',
    \ 'fg': '#22262A',
    \ '0':  '#22262A',
    \ '1':  '#BF4052',
    \ '2':  '#00AF60',
    \ '3':  '#B57C65',
    \ '4':  '#5A89AD',
    \ '5':  '#8558C7',
    \ '6':  '#109191',
    \ '7':  '#808892',
    \ '8':  '#384048',
    \ '9':  '#E04F86',
    \ '10': '#80D468',
    \ '11': '#FFFFAF',
    \ '12': '#87B4E0',
    \ '13': '#D668E1',
    \ '14': '#5BDDD0',
    \ '15': '#F1E6D9',
    \}

" Highlighting function.
function! s:HL(group, fg, bg, attrs, ...)
    let l:histr = "hi " . a:group
    if a:fg ==? "NONE"
        let l:histr = l:histr . " ctermfg=NONE guifg=NONE"
    else
        let l:histr = l:histr . " ctermfg=" . a:fg . " guifg=" . s:palette[a:fg]
    endif
    if a:bg ==? "NONE"
        let l:histr = l:histr . " ctermbg=NONE guibg=NONE"
    else
        let l:histr = l:histr . " ctermbg=" . a:bg . " guibg=" . s:palette[a:bg]
    endif
    let l:histr = l:histr . " cterm=" . a:attrs . " gui=" . a:attrs
    if a:0 > 0
        let l:histr = l:histr . " " . a:1
    endif
    exe l:histr
endfunction

" Set up Normal explicitly
exe "hi Normal ctermfg=0  guifg=" . s:palette['fg']
    \ . " ctermbg=15 guibg=" . s:palette['bg'] . " cterm=NONE gui=NONE"

" From the preffered group names (see :help group-name):
call s:HL("Comment",      '7',    'NONE', 'italic')

call s:HL("Constant",     '2',    'NONE', 'NONE')
hi! link String Constant
hi! link Character Constant
call s:HL("Number",       '10',   'NONE', 'NONE')
call s:HL("Boolean",      '5',    'NONE', 'italic')
hi! link Float Number

call s:HL("Identifier",   '12',   'NONE', 'NONE')
call s:HL("Function",     '4',    'NONE', 'NONE')

call s:HL("Statement",    '6',    'NONE', 'NONE')
hi! link Conditional Statement
hi! link Repeat      Statement
hi! link Label       Statement
hi! link Operator    Statement
hi! link Keyword     Statement
hi! link Exception   Statement

call s:HL("PreProc",      '14',   'NONE', 'NONE')
hi! link Include   PreProc
hi! link Define    PreProc
hi! link Macro     PreProc
hi! link PreCondit PreProc

call s:HL("Type",         '5',    'NONE', 'NONE')
hi! link StorageClass Type
hi! link Structure    Type
hi! link Typedef      Type

call s:HL("Special",      '9',    'NONE', 'NONE')
hi! link SpecialChar    Special
hi! link Tag            Special
hi! link Delimiter      Special
hi! link SpecialComment Special
hi! link Debug          Special

call s:HL("Underlined",   'NONE', 'NONE', 'underline')

call s:HL("Ignore",       'NONE', '8',    'NONE')

call s:HL("Error",        '1',    'NONE', 'NONE')

call s:HL("Todo",         '0',    '10',   'NONE')

" Statusline highlight groups.
call s:HL("User1",        '15',   '8',    'bold')
call s:HL("User2",        '15',   '7',    'bold')
call s:HL("User3",        '15',   '2',    'bold')
call s:HL("User4",        '15',   '4',    'bold')
call s:HL("User5",        '15',   '5',    'bold')
call s:HL("User6",        '15',   '6',    'bold')
call s:HL("User7",        '0',    '10',   'bold')
call s:HL("User8",        '0',    '12',   'bold')
call s:HL("User9",        '0',    '15',   'bold')

" Other common highlight groups.
call s:HL("ColorColumn",  'NONE', '8',    'NONE')
call s:HL("Conceal",      '7',    'NONE', 'NONE')
call s:HL("Cursor",       'NONE', 'NONE', 'reverse')
call s:HL("CursorIM",     'NONE', 'NONE', 'reverse')
call s:HL("CursorColumn", 'NONE', '8',    'NONE')
call s:HL("CursorLine",   'NONE', '8',    'NONE')
call s:HL("CursorLineNR", '4',    'NONE', 'NONE')
call s:HL("DiffAdd",      '2',    'NONE', 'NONE')
call s:HL("DiffChange",   '11',   'NONE', 'NONE')
call s:HL("DiffDelete",   '1',    'NONE', 'NONE')
call s:HL("DiffText",     '9',    'NONE', 'NONE')
call s:HL("Directory",    '4',    'NONE', 'bold')
call s:HL("EndOfBuffer",  '4',    'NONE', 'NONE')
call s:HL("ErrorMsg",     '15',   '1',    'NONE')
call s:HL("FoldColumn",   '15',   '8',    'NONE')
call s:HL("Folded",       '15',   '8',    'NONE')
call s:HL("IncSearch",    '0',    '11',   'NONE')
call s:HL("LineNr",       '4',    'NONE', 'NONE')
call s:HL("MatchParen",   'NONE', 'NONE', 'NONE')
call s:HL("ModeMsg",      'NONE', 'NONE', 'bold')
call s:HL("MoreMsg",      '2',    'NONE', 'NONE')
call s:HL("NonText",      '8',    'NONE', 'NONE')
call s:HL("NormalFloat",  '15',   '0',    'NONE')
call s:HL("NormalNC",     '15',   '0',    'NONE')
call s:HL("Pmenu",        '15',   '8',    'NONE')
call s:HL("PmenuSbar",    '7',    '8',    'NONE')
call s:HL("PmenuSel",     '15',   '4',    'NONE')
call s:HL("PmenuThumb",   '15',   '7',    'NONE')
call s:HL("Question",     '2',    'NONE', 'NONE')
call s:HL("QuickFixLine", '15',   '8',    'NONE')
call s:HL("Search",       '0',    '11',   'NONE')
call s:HL("SignColumn",   '7',    '0',    'NONE')
call s:HL("SpecialKey",   '13',   'NONE', 'NONE')
call s:HL("SpellBad",     'NONE', 'NONE', 'undercurl', 'guisp=' . s:palette[1])
call s:HL("SpellCap",     'NONE', 'NONE', 'undercurl', 'guisp=' . s:palette[4])
call s:HL("SpellLocal",   'NONE', 'NONE', 'undercurl', 'guisp=' . s:palette[6])
call s:HL("SpellRare",    'NONE', 'NONE', 'undercurl', 'guisp=' . s:palette[5])
call s:HL("StatusLine",   '15',   '4',    'bold')
call s:HL("StatusLineNC", '0',    '4',    'bold')
call s:HL("Substitute",   'NONE', '11',   'bold')
call s:HL("TabLine",      '15',   '8',    'NONE')
call s:HL("TabLineFill",  '15',   '8',    'NONE')
call s:HL("TabLineSel",   '15',   '7',    'NONE')
call s:HL("TermCursor",   'NONE', 'NONE', 'reverse')
call s:HL("TermCursorNC", 'NONE', 'NONE', 'reverse')
call s:HL("Title",        '5',    'NONE', 'NONE')
call s:HL("VertSplit",    '8',    '7',    'NONE')
call s:HL("Visual",       'NONE', 'NONE', 'reverse')
call s:HL("VisualNOS",    'NONE', 'NONE', 'reverse,underline')
call s:HL("WarningMsg",   '11',   'NONE', 'NONE')
call s:HL("Whitespace",   '8',    'NONE', 'NONE')
call s:HL("WildMenu",     '0',    '4',    'NONE')
