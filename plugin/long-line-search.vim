" ================================================================
" long-line-search.vim
" Author: Connor de la Cruz <github.com/connordelacruz>
" ================================================================

" Searches for lines longer than the specified length. If no arguments are
" provided, defaults to 80
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

" call LongLineSearch() and jump to first match
command! -nargs=* LongLineSearch call LongLineSearch(<args>) | normal n

