let s:table = {}


function! ime_wide#handler (matchobj, trigger)
    if s:table == {}
        let s:table = ime_wide_table#table()
    endif

    let l:wide_str = a:matchobj[0] . a:trigger
    call ime#log('wide', l:wide_str)
    let l:ret = get(s:table, l:wide_str, l:wide_str)
    if type(l:ret) == type('')
        return [(l:ret)]
    else
        return (l:ret)
    endif
endfunction


function! ime_wide#info ()
    return {
    \ 'type': 'standalone',
    \ 'icon': '[Ａ]',
    \ 'description': 'Wide characters',
    \ 'pattern': '\v%(\w|[-!@#$%^&*=+()\[\]{}<>\\|;'',./:"? ])*$',
    \ 'handler': function('ime_wide#handler'),
    \ 'trigger': split(
        \ 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-=!@#$%^&*()_+[]\\{};'',./:"<>?| ',
        \ '\zs')
    \ }
endfunction
