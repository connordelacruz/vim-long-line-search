" ==============================================================================
" long-line-search.vim
" Author: Connor de la Cruz <github.com/connordelacruz>
" ==============================================================================
" TODO: namespacing

""
" Searches for lines longer than the specified [length].
" Implementation for @command(LongLineSearch)
" @default length=80
function! LongLineSearch(...)
    if a:0 < 1
        " TODO: add configuration for default size
        let lineSize = 80
    else
        let lineSize = a:1
    endif
    let query = '\%>'.lineSize.'v.\+'
    call search(query)
    let @/ = query
endfunction

""
" Search for lines longer than [length] and jump to first match.
" @default length=80
command! -nargs=* LongLineSearch call LongLineSearch(<args>) | normal n

