" ========================= "
" boshiamy plugin meta data "
" ========================= "

let s:table = {}


function! s:handler (matchobj)
    if s:table == {}
        let s:table = boshiamy_wide_autoload#table()
    endif

    let l:wide_str = a:matchobj[0]
    if l:wide_str == ''
        return ['　']
    endif

    let l:p = 0
    let l:ret = ''
    while l:p < strlen(a:matchobj[0])
        let l:ret = l:ret . get(s:table, l:wide_str[(l:p)], l:wide_str[(l:p)])
        let l:p = l:p + 1
    endwhile

    return [l:ret]
endfunction


function! boshiamy_wide#info ()
    return {
    \ 'type': 'standalone',
    \ 'icon': '[Ａ]',
    \ 'description': 'Wide characters',
    \ 'pattern': '\v(%(\w|[-!@#$%^&*=+()\[\]{}<>\\|;'',./:"? ])*)$',
    \ 'handler': function('s:handler'),
    \ }
endfunction
