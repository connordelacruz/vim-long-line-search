" TODO: document

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

command! -nargs=* LongLineSearch call LongLineSearch(<args>) | normal n

