let s:table = {}


function! ime_wide#handler (matchobj, trigger)
    if s:table == {}
        let s:table = ime_wide_table#table()
    endif

    if a:trigger == '<space>'
        let l:wide_str = a:matchobj[0] . ' '
    elseif a:trigger == '<bar>'
        let l:wide_str = a:matchobj[0] . '|'
    else
        let l:wide_str = a:matchobj[0] . a:trigger
    endif
    call ime#log('wide', l:wide_str)
    return [get(s:table, l:wide_str, l:wide_str)]
endfunction


function! ime_wide#info ()
    return {
    \ 'type': 'standalone',
    \ 'icon': '[Ａ]',
    \ 'description': 'Wide characters',
    \ 'pattern': '\v%(\w|[-!@#$%^&*=+()\[\]{}<>\\|;'',./:"? ])*$',
    \ 'handler': function('ime_wide#handler'),
    \ 'trigger': split(
        \ 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-=!@#$%^&*()_+[]\\{};'',./:"<>?',
        \ '\zs') + ['<bar>', '<space>']
    \ }
endfunction
