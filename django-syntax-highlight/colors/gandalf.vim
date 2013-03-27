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
hi Normal       ctermfg=252 guifg=#d0d0d0 ctermbg=234 guibg=#1c1c1c cterm=none gui=none
hi CursorColumn                           ctermbg=254 guibg=#444444
hi Cursor                                 ctermbg=214 guibg=#ffaf00
hi CursorLine                             ctermbg=235 guibg=#444444 cterm=none gui=none
hi ColorColumn                            ctermbg=235 guibg=#444444
hi FoldColumn   ctermfg=248 guifg=#a8a8a8 ctermbg=bg  guibg=bg
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
hi LineNr       ctermfg=248 guifg=#a8a8a8
hi MatchParen   ctermfg=188 guifg=#dfdfdf ctermbg=68  guibg=#5f87df cterm=bold gui=bold
hi Number       ctermfg=180 guifg=#dfaf87
hi PreProc      ctermfg=150 guifg=#afdf87
hi Special      ctermfg=174 guifg=#df8787
hi Statement    ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Todo         ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00
hi Type         ctermfg=146 guifg=#afafdf                           cterm=none gui=none
hi Underlined   ctermfg=39  guifg=#00afff                           cterm=underline gui=underline

"" These are my additions. Jan 2, 2013.
hi Keyword      ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Function     ctermfg=182 guifg=#dfafdf
hi Structure    ctermfg=146 guifg=#afafdf                           cterm=none gui=none
hi Operator     ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Label        ctermfg=146 guifg=#afafdf                           cterm=none gui=none
hi String       ctermfg=97 guifg=#875faf
hi Character    ctermfg=134 guifg=#af5fd7

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
"hi djDjango     ctermfg=149 guifg=#afd75f                           cterm=none gui=none
hi djClass        ctermfg=113 guifg=#87d75f                           cterm=none gui=none
hi djSub        ctermfg=149 guifg=#afd75f                           cterm=none gui=none
hi djFunct      ctermfg=149 guifg=#afd75f

" vim: set expandtab tabstop=2 shiftwidth=2 smarttab softtabstop=2 tw=100 colorcolumn=+1:
