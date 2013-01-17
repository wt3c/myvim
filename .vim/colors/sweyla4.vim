" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/985731/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla4"

if version >= 700
  hi CursorLine     guibg=#0A0000 ctermbg=16
  hi CursorColumn   guibg=#0A0000 ctermbg=16
  hi MatchParen     guifg=#BF4500 guibg=#0A0000 gui=bold ctermfg=130 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#7BAA0C ctermfg=255 ctermbg=106
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#0A0000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#190F0F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#393030 guibg=#231919 gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#202202 gui=italic ctermfg=255 ctermbg=234 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#322828 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#231919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#0A0000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#7BAA0C guibg=NONE	gui=bold ctermfg=106 ctermbg=NONE cterm=bold
hi Visual           guifg=#7A9C1F guibg=#323232 gui=none ctermfg=106 ctermbg=236 cterm=none
hi SpecialKey       guifg=#F620B4 guibg=#190F0F gui=none ctermfg=199 ctermbg=233 cterm=none
"hi DiffChange       guibg=#534C00 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#2C254C gui=none ctermbg=236 cterm=none
"hi DiffText         guibg=#6C3266 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#470000 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#7A9C1F gui=bold ctermfg=106 cterm=bold


" Syntax highlighting
hi Comment guifg=#7BAA0C gui=none ctermfg=106 cterm=none
hi Constant guifg=#F620B4 gui=none ctermfg=199 cterm=none
hi Number guifg=#F620B4 gui=none ctermfg=199 cterm=none
hi Identifier guifg=#88FF9F gui=none ctermfg=121 cterm=none
hi Statement guifg=#BF4500 gui=none ctermfg=130 cterm=none
hi Function guifg=#C58990 gui=none ctermfg=174 cterm=none
hi Special guifg=#DC7E22 gui=none ctermfg=172 cterm=none
hi PreProc guifg=#DC7E22 gui=none ctermfg=172 cterm=none
hi Keyword guifg=#BF4500 gui=none ctermfg=130 cterm=none
hi String guifg=#7A9C1F gui=none ctermfg=106 cterm=none
hi Type guifg=#50CC16 gui=none ctermfg=76 cterm=none
hi pythonBuiltin guifg=#88FF9F gui=none ctermfg=121 cterm=none
hi TabLineFill guifg=#363E0C gui=none ctermfg=237 cterm=none
