" Maintainer: Kolozsi Róbert <kolozsi.robert@gmail.com>
" Start Date: Jan 15, 2013.
" Last Edit: Jan 28, 2013.
" Description: These functions are checking the current line in text
" if it contains one or more space characters at the very end.
" If it does, removes all of them and goes one line down.
" There are two versions of function below:


" Remve all space characters from the beggining of the line. {{{1
" Clean version for use individualy.
" nnoremap <c-^> <silent> :call Remove_start_spaces_current<cr>
function! Remove_start_spaces_current()
    let s:line = getline(".")

    if s:line[0] =~# "\\s"
        while s:line[0] =~# "\\s"
                call cursor(line("."), 1)
                execute "normal! x"
                let s:line = getline(".")
        endwhile
    endif
endfunction
" nnoremap <c-^> <silent> :call Remove_start_spaces_current<cr>
" }}}

" Version for passing a line. Good for use in another function. {{{1
function! Remove_start_spaces(line)
    if a:line[0] ==# " "
        while a:line[0] =~# "\\s"
            call cursor(line("."), 1)
            execute "normal! x"
        endwhile
    endif
endfunction
" }}}

" Function can be called with the range of lines. {{{1
" e.g.:
" :1,1925call Remove_end_spaces_range()
"
function! Remove_end_spaces_range() range
    let s:lnum = a:firstline

    while s:lnum <=# a:lastline
        let s:line = getline(".")
        let s:len = strlen(s:line)
        if s:line[s:len-1] ==# " "
            while s:line[s:len-1] ==# " "
                execute "normal! $x"
                let s:line = getline(".")
                let s:len = strlen(s:line)
            endwhile
            execute "normal! \<Down>"
        else
            execute "normal! \<Down>"
        endif

        let s:lnum += 1
    endwhile

    unlet s:len
    unlet s:line
endfunction
" }}}

" Function version without the range of lines. {{{1
" Can be used with saved macros or just map it to some key.
" e.g.:
" :call Remove_end_spaces()
"
function! Remove_end_spaces()
    let s:line = getline(".")
    let s:len = strlen(s:line)

    if s:line[s:len-1] ==# " "
        while s:line[s:len-1] ==# " "
            execute "normal! $x"
            let s:line = getline(".")
            let s:len = strlen(s:line)
        endwhile
        execute "normal! \<Down>"
    else
        execute "normal! \<Down>"
    endif

    unlet s:len
    unlet s:line
endfunction
" }}}

" Function to unpack anything within parentheses. {{{1
" You can use it to unpack everithing from '(' to the EOL and
" from ')' to the beginning of the line.
" And it is doing it by looping 'recursively' through particular line.
"
function! Unpack_arguments()
    let s:line = getline(".")
    let s:len = strlen(s:line) - 1
    let s:lastline = line("$")
    let s:curr_line = 1
    let s:nest_parenthes = 0

    let s:pasted = 0

    " First Pass:
    " Remove the path and the line number from input file
    " at the beginning of lines.
    while line(".") <= line("$")
        execute "normal! 0d2f:wd0"
        if line(".") < line("$")
            execute "normal! \<Down>"
        else
            execute "normal! gg"
            break
        endif
    endwhile

    " Second Pass: The Main Loop {{{2
    " NOTE: match returns 0 based indexing or -1 if no match found.
    while line(".") <= line("$")
        " First find if line contains empty parentheses, if so deletes them.
        if match(getline("."), "()") !=# -1
            call cursor(line("."), match(getline("."), "()")+1)
            execute "normal! xx"
        endif

        let s:line = getline(".")
        let s:par_open = match(s:line, "(")
        let s:par_close = match(s:line, ")")

        " Factor out the function arguments/elements in parentheses.
        if s:par_open !=# -1 && s:par_close !=# -1 | " Found '(' and ')'
            call cursor(line("."), s:par_open+1)
            let s:pasted += 1
            execute "normal! di(O\<Esc>p"

        elseif s:par_open !=# -1 && s:par_close ==# -1 | " Found '('
            if match(s:line, "($") !=# -1
                execute "normal! dd"
            endif
            call cursor(line("."), s:par_open+2)
            if match(s:line, "($") ==# -1
                let s:pasted += 1
                let s:nest_parenthes += 1
                execute "normal! vg_dO\<Esc>p"
            elseif s:nest_parenthes ==# 0
                " Delete the line which ends with `($' and nest_parenthes == 0
                " which means there was no previous paste of `(' character.
                execute "normal! dd"
            elseif s:nest_parenthes ># 0
                " If nest_parenthes is set then only delete the last character
                " which is `('.
                " It means that previous paste already contained `(' character.
                let s:nest_parenthes -= 1
                execute "normal! x"
            endif

        elseif s:par_open ==# -1 && s:par_close !=# -1 | " Found ')'
            if match(s:line, "^)") !=# -1 || match(s:line, "^\\s") !=# -1
                call cursor(line("."), 1)
                execute "normal! x"
            else
                call cursor(line("."), s:par_close+1)
                execute "normal! d^O\<Esc>p\<Down>"
            endif

        elseif (s:par_open ==# -1 && s:par_close ==# -1) && s:pasted ==# 0
            if line(".") <# line("$")
                execute "normal! dd"
            else
                "echom 'BREAK1!'
                execute "normal! dd"
                break
            endif

        elseif (s:par_open ==# -1 && s:par_close ==# -1) && s:pasted ># 0
            let s:pasted -= 1
            if line(".") <# line("$")
                execute "normal! \<Down>"
            else
                "echom 'BREAK2!'
                execute "normal! dd"
                break
            endif
        endif

    endwhile
" }}}

    normal gg

    "Phase Three: Clean the begginning of each line if contains space chars.
    while line(".") <# line("$")
        call Remove_start_spaces(getline("."))
        execute "normal! \<Down>"
    endwhile

    normal gg

endfunction
" }}}

" {{{1
function! Test_func()
    if line(".") <# line("$")
        execute "normal! \<Down>"
    elseif line(".") ==# line("$")
        execute "normal! \<Up>"
    endif
endfunction
" }}}

" vim: set foldmethod=marker foldlevel=2 tw=100:
