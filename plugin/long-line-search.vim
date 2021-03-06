" ==============================================================================
" long-line-search.vim
" Author: Connor de la Cruz <github.com/connordelacruz>
" ==============================================================================

if !exists('g:LongLineSeachDefaultLength')
    ""
    " Default line length to use for @command(LongLineSearch) when no
    " arguments are passed and textwidth is not set for the current filetype
    let g:LongLineSeachDefaultLength = 80
endif

""
" Searches for lines longer than the specified [length].
" Implementation for @command(LongLineSearch)
" @default length=@setting(LongLineSeachDefaultLength)
function! LongLineSearch(...)
    if a:0 < 1
        " If textwidth not set and line size not specified, default to
        " configured value
        let lineSize = &textwidth ? &textwidth : g:LongLineSeachDefaultLength
    else
        let lineSize = a:1
    endif
    let query = '\%>'.lineSize.'v.\+'
    call search(query)
    let @/ = query
endfunction

""
" Search for lines longer than [length] and jump to first match.
" @default length=@setting(LongLineSeachDefaultLength)
command! -nargs=* LongLineSearch call LongLineSearch(<args>) | normal n

