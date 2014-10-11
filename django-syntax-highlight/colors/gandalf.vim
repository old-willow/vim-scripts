" Vim color file
"
" Name:       gandalf.vim (based on xoria256.vim)
" Version:    1.0
" Maintainer: Kolozsi Robert
" Date Created: Jan 2, 2013
" Last Changed: March 20, 2013
" Description: This is constantly work in progress.
"              For color numbers (0-255) see:
"              http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

"
" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/7 brgreen  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/7 bryellow 241 #585858 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
"
if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal"
  echomsg ""
  finish
endif

set background=dark

" If this is uncommented it always clear coloring on my status line. (powerline)
" Som I'm commenting it out!
"hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "gandalf"

"" General colors
hi Normal       ctermfg=252 guifg=#d0d0d0 ctermbg=235 guibg=#444444 cterm=none gui=none
hi CursorColumn                           ctermbg=254 guibg=#444444
"hi LineNr       ctermfg=248 guifg=#a8a8a8 ctermbg=236 guibg=#444444
hi LineNr       ctermfg=240 guifg=#585858 ctermbg=236 guibg=#444444
hi Cursor                                 ctermbg=214 guibg=#ffaf00
hi CursorLine                             ctermbg=236 guibg=#303030 cterm=none gui=none
hi ColorColumn                            ctermbg=236 guibg=#303030
hi FoldColumn   ctermfg=248 guifg=#a8a8a8 ctermbg=236 guibg=#444444
"hi Folded       ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
hi Folded       ctermfg=243 guifg=#767676 ctermbg=237  guibg=#3a3a3a
hi IncSearch    ctermfg=0   guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none gui=none
"hi NonText      ctermfg=248 guifg=#a8a8a8                           cterm=bold gui=bold | " Default
hi NonText      ctermfg=25  guifg=#005faf                           cterm=bold gui=bold
hi Pmenu        ctermfg=0   guifg=#000000 ctermbg=246 guibg=#949494
hi PmenuSbar                              ctermbg=243 guibg=#767676
hi PmenuSel     ctermfg=0   guifg=#000000 ctermbg=243 guibg=#767676
hi PmenuThumb                             ctermbg=252 guibg=#d0d0d0
hi Search       ctermfg=0   guifg=#000000 ctermbg=149 guibg=#afdf5f
hi SignColumn   ctermfg=28  guifg=#008700 ctermbg=235 guibg=#262626
"hi SpecialKey   ctermfg=77  guifg=#5fdf5f | " Default
hi SpecialKey   ctermfg=25  guifg=#005faf
hi StatusLine   ctermfg=244 guifg=#808080 ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=244 guifg=#808080 ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi TabLine      ctermfg=fg  guifg=fg      ctermbg=242 guibg=#666666 cterm=underline gui=underline
hi TabLineFill  ctermfg=fg  guifg=fg      ctermbg=242 guibg=#666666 cterm=underline gui=underline
hi VertSplit    ctermfg=237 guifg=#3a3a3a ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi Visual       ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff
hi VIsualNOS    ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff cterm=none gui=none
hi WildMenu     ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00 cterm=bold gui=bold

"" Syntax highlighting
hi Comment      ctermfg=244 guifg=#808080
hi Constant     ctermfg=229 guifg=#ffffaf
hi Error        ctermfg=15  guifg=#ffffff ctermbg=1   guibg=#800000
hi ErrorMsg     ctermfg=15  guifg=#ffffff ctermbg=1   guibg=#800000
hi Identifier   ctermfg=182 guifg=#dfafdf                           cterm=none
hi Ignore       ctermfg=238 guifg=#444444
hi MatchParen   ctermfg=188 guifg=#dfdfdf ctermbg=68  guibg=#5f87df cterm=bold gui=bold
hi Number       ctermfg=180 guifg=#dfaf87
hi PreProc      ctermfg=150 guifg=#afdf87
hi Special      ctermfg=174 guifg=#df8787
"hi Statement    ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Statement     ctermfg=226 guifg=#ffff00
"hi Statement    ctermfg=214 guifg=#ffaf00                           cterm=none gui=none
hi Todo         ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00
hi Type         ctermfg=146 guifg=#afafdf                           cterm=none gui=none
hi Underlined   ctermfg=39  guifg=#00afff                           cterm=underline gui=underline

"" These are my additions. March 28, 2013.
hi Keyword      ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Function    ctermfg=214 guifg=#ffaf00                           cterm=none gui=none
hi Conditional ctermfg=81 guifg=#5fd7ff                           cterm=none gui=none
hi Repeat      ctermfg=81 guifg=#5fd7ff                           cterm=none gui=none
"hi Function     ctermfg=226 guifg=#ffff00
"hi Function     ctermfg=182 guifg=#dfafdf
"hi Function     ctermfg=blue guifg=#808080
hi Structure    ctermfg=146 guifg=#afafdf                           cterm=none gui=none
hi Operator     ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Label        ctermfg=146 guifg=#afafdf                           cterm=none gui=none
hi String       ctermfg=97 guifg=#875faf
hi Character    ctermfg=134 guifg=#af5fd7
hi Include      ctermfg=222 guifg=#ffd787

"" Custom colors settings: javascript.
"" DateEdited: Jan 4, 2013
"" group named in file .vim/syntax/javascript.vim
hi javaScriptRegexp ctermfg=99 guifg=#875fff


"" Custom colors settings: python.
"" DateEdited: Jan 4, 2013
"" groups named in file .vim/syntax/python.vim
hi DocString    ctermfg=97 guifg=#875faf
hi StringD      ctermfg=99 guifg=#875fff
hi StringS      ctermfg=134 guifg=#af5fd7
hi pyBraces     ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi pyParens     ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi pyOperators  ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi pyPunct      ctermfg=110 guifg=#87afdf                           cterm=none gui=none


"" Special
""" .diff
hi diffAdded    ctermfg=150 guifg=#afdf87
hi diffRemoved  ctermfg=174 guifg=#df8787
""" vimdiff
hi diffAdd      ctermfg=bg  guifg=bg      ctermbg=151 guibg=#afdfaf
"hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=186 guibg=#dfdf87 cterm=none gui=none
hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=246 guibg=#949494 cterm=none gui=none
hi diffChange   ctermfg=bg  guifg=bg      ctermbg=181 guibg=#dfafaf
hi diffText     ctermfg=bg  guifg=bg      ctermbg=174 guibg=#df8787 cterm=none gui=none

" Specific fo django syntax highlighting
"hi djDjango     ctermfg=22 guifg=#005f00                           cterm=none gui=none
"hi djMain       ctermfg=28 guifg=#008700                           cterm=none gui=none
hi djClass        ctermfg=112 guifg=#87d700                           cterm=none gui=none
hi djSub        ctermfg=149 guifg=#afd75f                           cterm=none gui=none
hi djFunct      ctermfg=208 guifg=#ff8700
hi djHttpMethod ctermfg=196 guifg=#ff0000


" vim: set expandtab tabstop=2 shiftwidth=2 smarttab softtabstop=2 tw=100 colorcolumn=+1:
