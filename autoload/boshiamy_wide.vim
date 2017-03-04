" ========================= "
" boshiamy plugin meta data "
" ========================= "

let boshiamy_wide#type = 'standalone'
let boshiamy_wide#icon = '[Ａ]'
let boshiamy_wide#description = 'Wide characters'


function! boshiamy_wide#description (locale)
    return 'Wide characters'
endfunction

let boshiamy_wide#pattern = '\v(%(\w|[-!@#$%^&*=+()\[\]{}<>\\|;'',./:"? ])*)$'


let s:table = {}


function! boshiamy_wide#handler (matchobj)
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
