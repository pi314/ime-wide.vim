echom "Loading wide characters table..."
let s:table = {}
let s:table["a"] = "ａ"
let s:table["b"] = "ｂ"
let s:table["c"] = "ｃ"
let s:table["d"] = "ｄ"
let s:table["e"] = "ｅ"
let s:table["f"] = "ｆ"
let s:table["g"] = "ｇ"
let s:table["h"] = "ｈ"
let s:table["i"] = "ｉ"
let s:table["j"] = "ｊ"
let s:table["k"] = "ｋ"
let s:table["l"] = "ｌ"
let s:table["m"] = "ｍ"
let s:table["n"] = "ｎ"
let s:table["o"] = "ｏ"
let s:table["p"] = "ｐ"
let s:table["q"] = "ｑ"
let s:table["r"] = "ｒ"
let s:table["s"] = "ｓ"
let s:table["t"] = "ｔ"
let s:table["u"] = "ｕ"
let s:table["v"] = "ｖ"
let s:table["w"] = "ｗ"
let s:table["x"] = "ｘ"
let s:table["y"] = "ｙ"
let s:table["z"] = "ｚ"
let s:table["A"] = "Ａ"
let s:table["B"] = "Ｂ"
let s:table["C"] = "Ｃ"
let s:table["D"] = "Ｄ"
let s:table["E"] = "Ｅ"
let s:table["F"] = "Ｆ"
let s:table["G"] = "Ｇ"
let s:table["H"] = "Ｈ"
let s:table["I"] = "Ｉ"
let s:table["J"] = "Ｊ"
let s:table["K"] = "Ｋ"
let s:table["L"] = "Ｌ"
let s:table["M"] = "Ｍ"
let s:table["N"] = "Ｎ"
let s:table["O"] = "Ｏ"
let s:table["P"] = "Ｐ"
let s:table["Q"] = "Ｑ"
let s:table["R"] = "Ｒ"
let s:table["S"] = "Ｓ"
let s:table["T"] = "Ｔ"
let s:table["U"] = "Ｕ"
let s:table["V"] = "Ｖ"
let s:table["W"] = "Ｗ"
let s:table["X"] = "Ｘ"
let s:table["Y"] = "Ｙ"
let s:table["Z"] = "Ｚ"
let s:table["0"] = "０"
let s:table["1"] = "１"
let s:table["2"] = "２"
let s:table["3"] = "３"
let s:table["4"] = "４"
let s:table["5"] = "５"
let s:table["6"] = "６"
let s:table["7"] = "７"
let s:table["8"] = "８"
let s:table["9"] = "９"
let s:table["-"] = "ー"
let s:table["="] = "＝"
let s:table["!"] = "！"
let s:table["@"] = "＠"
let s:table["#"] = "＃"
let s:table["$"] = "＄"
let s:table["%"] = "％"
let s:table["^"] = "︿"
let s:table["&"] = "＆"
let s:table["*"] = "＊"
let s:table["("] = "（"
let s:table[")"] = "）"
let s:table["_"] = "＿"
let s:table["+"] = "﹢"
let s:table["["] = "〔"
let s:table["]"] = "〕"
let s:table["\\"] = "＼"
let s:table['{'] = "｛"
let s:table['}'] = "｝"
let s:table['|'] = "│"
let s:table[";"] = "；"
let s:table["'"] = "、"
let s:table[","] = "，"
let s:table["."] = "。"
let s:table["/"] = "／"
let s:table[":"] = "："
let s:table['"'] = "〝"
let s:table["<"] = "＜"
let s:table[">"] = "＞"
let s:table["?"] = "？"
let s:table[" "] = "　"
echom "Done"

function! boshiamy_wide_autoload#table ()
    return s:table
endfunction
