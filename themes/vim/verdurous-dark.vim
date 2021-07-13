hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="verdurous-dark"
set background=dark

let s:palette={
    \ "bg": "#22262A",
    \ "fg": "#F1E6D9",
    \ "0":  "#22262A",
    \ "1":  "#BF4052",
    \ "2":  "#00AF60",
    \ "3":  "#B57C65",
    \ "4":  "#5A89AD",
    \ "5":  "#8558C7",
    \ "6":  "#109191",
    \ "7":  "#808892",
    \ "8":  "#384048",
    \ "9":  "#E04F86",
    \ "10": "#80D468",
    \ "11": "#FFFFAF",
    \ "12": "#87B4E0",
    \ "13": "#D668E1",
    \ "14": "#5BDDD0",
    \ "15": "#F1E6D9",
    \}

" Highlighting function.
function! s:HL(group, fg, bg, attrs, ...)
    let l:histr = "hi " . a:group
    if a:fg ==? "none"
        let l:histr = l:histr . " ctermfg=none guifg=none"
    else
        let l:histr = l:histr . " ctermfg=" . a:fg . " guifg=" . s:palette[a:fg]
    endif
    if a:bg ==? "none"
        let l:histr = l:histr . " ctermbg=none guibg=none"
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
exe "hi Normal ctermfg=15 guifg=" . s:palette["fg"]
         \ . " ctermbg=0  guibg=" . s:palette["bg"] . " cterm=none gui=none"

" From the preffered group names (see :help group-name):
call s:HL("Comment",      "7",    "none", "italic")

call s:HL("Constant",     "13",   "none", "none")
call s:HL("String",       "2",    "none", "none")
hi! link Character String
call s:HL("Number",       "10",   "none", "none")
call s:HL("Boolean",      "13",   "none", "italic")
hi! link Float Number

call s:HL("Identifier",   "12",   "none", "none")
call s:HL("Function",     "4",    "none", "none")

call s:HL("Statement",    "6",    "none", "none")
hi! link Conditional Statement
hi! link Repeat      Statement
hi! link Label       Statement
hi! link Operator    Statement
hi! link Keyword     Statement
hi! link Exception   Statement

call s:HL("PreProc",      "14",   "none", "none")
hi! link Include   PreProc
hi! link Define    PreProc
hi! link Macro     PreProc
hi! link PreCondit PreProc

call s:HL("Type",         "5",    "none", "none")
hi! link StorageClass Type
hi! link Structure    Type
hi! link Typedef      Type

call s:HL("Special",      "9",    "none", "none")
hi! link SpecialChar    Special
hi! link Tag            Special
hi! link Delimiter      Normal
hi! link SpecialComment Special
hi! link Debug          Special

call s:HL("Underlined",   "none", "none", "underline")

call s:HL("Ignore",       "none", "8",    "none")

call s:HL("Error",        "1",    "none", "none")

call s:HL("Todo",         "bg",   "10",   "none")

" Statusline highlight groups.
call s:HL("User1",        "fg",   "8",    "bold")
call s:HL("User2",        "fg",   "7",    "bold")
call s:HL("User3",        "fg",   "2",    "bold")
call s:HL("User4",        "fg",   "4",    "bold")
call s:HL("User5",        "fg",   "5",    "bold")
call s:HL("User6",        "fg",   "6",    "bold")
call s:HL("User7",        "bg",   "10",   "bold")
call s:HL("User8",        "bg",   "12",   "bold")
call s:HL("User9",        "bg",   "fg",   "bold")

" Other common highlight groups.
call s:HL("ColorColumn",  "none", "8",    "none")
call s:HL("Conceal",      "7",    "none", "none")
call s:HL("Cursor",       "none", "none", "reverse")
call s:HL("CursorIM",     "none", "none", "reverse")
call s:HL("CursorColumn", "none", "8",    "none")
call s:HL("CursorLine",   "none", "8",    "none")
call s:HL("CursorLineNR", "4",    "none", "none")
call s:HL("DiffAdd",      "2",    "none", "none")
call s:HL("DiffChange",   "3",    "none", "none")
call s:HL("DiffDelete",   "1",    "none", "none")
call s:HL("DiffText",     "11",   "none", "none")
call s:HL("Directory",    "4",    "none", "bold")
call s:HL("EndOfBuffer",  "4",    "none", "none")
call s:HL("ErrorMsg",     "fg",   "1",    "none")
call s:HL("FoldColumn",   "fg",   "8",    "none")
call s:HL("Folded",       "fg",   "8",    "none")
call s:HL("IncSearch",    "11",   "none", "reverse")
call s:HL("LineNr",       "4",    "none", "none")
call s:HL("MatchParen",   "9",    "none", "none")
call s:HL("ModeMsg",      "none", "none", "bold")
call s:HL("MoreMsg",      "2",    "none", "none")
call s:HL("NonText",      "8",    "none", "none")
call s:HL("NormalFloat",  "fg",   "8",    "none")
call s:HL("NormalNC",     "fg",   "none", "none")
call s:HL("Pmenu",        "fg",   "8",    "none")
call s:HL("PmenuSbar",    "7",    "8",    "none")
call s:HL("PmenuSel",     "fg",   "4",    "none")
call s:HL("PmenuThumb",   "fg",   "7",    "none")
call s:HL("Question",     "2",    "none", "none")
call s:HL("QuickFixLine", "fg",   "8",    "none")
call s:HL("Search",       "11",   "none", "none")
call s:HL("SignColumn",   "7",    "none", "none")
call s:HL("SpecialKey",   "13",   "none", "none")
call s:HL("SpellBad",     "none", "none", "undercurl", "guisp=" . s:palette[1])
call s:HL("SpellCap",     "none", "none", "undercurl", "guisp=" . s:palette[4])
call s:HL("SpellLocal",   "none", "none", "undercurl", "guisp=" . s:palette[6])
call s:HL("SpellRare",    "none", "none", "undercurl", "guisp=" . s:palette[5])
call s:HL("StatusLine",   "fg",   "4",    "bold")
call s:HL("StatusLineNC", "bg",   "4",    "bold")
call s:HL("Substitute",   "none", "11",   "bold")
call s:HL("TabLine",      "fg",   "8",    "none")
call s:HL("TabLineFill",  "fg",   "8",    "none")
call s:HL("TabLineSel",   "fg",   "7",    "none")
call s:HL("TermCursor",   "none", "none", "reverse")
call s:HL("TermCursorNC", "none", "none", "reverse")
call s:HL("Title",        "13",   "none", "none")
call s:HL("VertSplit",    "7",    "8",    "none")
call s:HL("Visual",       "none", "none", "reverse")
call s:HL("VisualNOS",    "none", "none", "reverse,underline")
call s:HL("WarningMsg",   "11",   "none", "none")
call s:HL("Whitespace",   "8",    "none", "none")
call s:HL("WildMenu",     "bg",   "4",    "none")

" TreeSitter.
hi! link TSFuncBuiltin Function
