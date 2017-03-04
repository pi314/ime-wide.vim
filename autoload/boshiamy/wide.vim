" ========================= "
" boshiamy plugin meta data "
" ========================= "

let boshiamy#wide#type = 'standalone'
let boshiamy#wide#icon = '[Ａ]'
let boshiamy#wide#description = 'Wide characters'


function! boshiamy#wide#description (locale)
    return 'Wide characters'
endfunction

let boshiamy#wide#pattern = '\v(%(\w|[-!@#$%^&*=+()\[\]{}<>\\|;'',./:"? ])*)$'


echom "Loading wide table..."
let s:wide_table = {}
let s:wide_table["a"] = "ａ"
let s:wide_table["b"] = "ｂ"
let s:wide_table["c"] = "ｃ"
let s:wide_table["d"] = "ｄ"
let s:wide_table["e"] = "ｅ"
let s:wide_table["f"] = "ｆ"
let s:wide_table["g"] = "ｇ"
let s:wide_table["h"] = "ｈ"
let s:wide_table["i"] = "ｉ"
let s:wide_table["j"] = "ｊ"
let s:wide_table["k"] = "ｋ"
let s:wide_table["l"] = "ｌ"
let s:wide_table["m"] = "ｍ"
let s:wide_table["n"] = "ｎ"
let s:wide_table["o"] = "ｏ"
let s:wide_table["p"] = "ｐ"
let s:wide_table["q"] = "ｑ"
let s:wide_table["r"] = "ｒ"
let s:wide_table["s"] = "ｓ"
let s:wide_table["t"] = "ｔ"
let s:wide_table["u"] = "ｕ"
let s:wide_table["v"] = "ｖ"
let s:wide_table["w"] = "ｗ"
let s:wide_table["x"] = "ｘ"
let s:wide_table["y"] = "ｙ"
let s:wide_table["z"] = "ｚ"
let s:wide_table["A"] = "Ａ"
let s:wide_table["B"] = "Ｂ"
let s:wide_table["C"] = "Ｃ"
let s:wide_table["D"] = "Ｄ"
let s:wide_table["E"] = "Ｅ"
let s:wide_table["F"] = "Ｆ"
let s:wide_table["G"] = "Ｇ"
let s:wide_table["H"] = "Ｈ"
let s:wide_table["I"] = "Ｉ"
let s:wide_table["J"] = "Ｊ"
let s:wide_table["K"] = "Ｋ"
let s:wide_table["L"] = "Ｌ"
let s:wide_table["M"] = "Ｍ"
let s:wide_table["N"] = "Ｎ"
let s:wide_table["O"] = "Ｏ"
let s:wide_table["P"] = "Ｐ"
let s:wide_table["Q"] = "Ｑ"
let s:wide_table["R"] = "Ｒ"
let s:wide_table["S"] = "Ｓ"
let s:wide_table["T"] = "Ｔ"
let s:wide_table["U"] = "Ｕ"
let s:wide_table["V"] = "Ｖ"
let s:wide_table["W"] = "Ｗ"
let s:wide_table["X"] = "Ｘ"
let s:wide_table["Y"] = "Ｙ"
let s:wide_table["Z"] = "Ｚ"
let s:wide_table["0"] = "０"
let s:wide_table["1"] = "１"
let s:wide_table["2"] = "２"
let s:wide_table["3"] = "３"
let s:wide_table["4"] = "４"
let s:wide_table["5"] = "５"
let s:wide_table["6"] = "６"
let s:wide_table["7"] = "７"
let s:wide_table["8"] = "８"
let s:wide_table["9"] = "９"
let s:wide_table["-"] = "ー"
let s:wide_table["="] = "＝"
let s:wide_table["!"] = "！"
let s:wide_table["@"] = "＠"
let s:wide_table["#"] = "＃"
let s:wide_table["$"] = "＄"
let s:wide_table["%"] = "％"
let s:wide_table["^"] = "︿"
let s:wide_table["&"] = "＆"
let s:wide_table["*"] = "＊"
let s:wide_table["("] = "（"
let s:wide_table[")"] = "）"
let s:wide_table["_"] = "＿"
let s:wide_table["+"] = "﹢"
let s:wide_table["["] = "〔"
let s:wide_table["]"] = "〕"
let s:wide_table["\\"] = "＼"
let s:wide_table['{'] = "｛"
let s:wide_table['}'] = "｝"
let s:wide_table['|'] = "│"
let s:wide_table[";"] = "；"
let s:wide_table["'"] = "、"
let s:wide_table[","] = "，"
let s:wide_table["."] = "。"
let s:wide_table["/"] = "／"
let s:wide_table[":"] = "："
let s:wide_table['"'] = "〝"
let s:wide_table["<"] = "＜"
let s:wide_table[">"] = "＞"
let s:wide_table["?"] = "？"
let s:wide_table[" "] = "　"
echom "Done"


function! boshiamy#wide#handler (matchobj)
    let l:wide_str = a:matchobj[0]
    if l:wide_str == ''
        return ['　']
    endif

    let l:p = 0
    let l:ret = ''
    while l:p < strlen(a:matchobj[0])
        let l:ret = l:ret . get(s:wide_table, l:wide_str[(l:p)], l:wide_str[(l:p)])
        let l:p = l:p + 1
    endwhile

    return [l:ret]
endfunction
