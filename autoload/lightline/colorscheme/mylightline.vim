let s:base03 = [ '#151513', 233 ]
let s:base02 = [ '#30302c ', 234 ]
let s:base01 = [ '#4e4e43', 236 ]
let s:base00 = [ '#666656', 242  ]
let s:base0 = [ '#808070', 244 ]
let s:base1 = [ '#949484', 246 ]
let s:base2 = [ '#a8a897', 248 ]
let s:base3 = [ '#e8e8d3', 245 ]
let s:yellow = [ '#d8af5f', 3 ]
let s:orange = [ '#d7875f', 216 ]
let s:red = [ '#d68787', 131 ]
let s:magenta = [ '#df5f87', 168 ]
let s:peach = [ '#d7afaf', 181 ]
let s:blue = [ '#87afaf', 240 ]
let s:cyan = [ '#87d7d7', 23 ]
let s:green = [ '#87af87', 108 ]
let s:white = [ '#d0d0d0', 252 ]

let s:inactive_bg = ['#151513', 235]
let s:inactive_fg = ['#151513', 239]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:inactive = [
      \  [s:inactive_fg, s:inactive_bg],
      \  [s:inactive_fg, s:inactive_bg],
      \ ]

let s:p.normal.left = [ [ s:base02, s:blue , 'bold'], [ s:base3, s:base01 ] ]
let s:p.insert.left = [ [ s:base02, s:green, 'bold'], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:peach, 'bold'], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:magenta, 'bold' ], [ s:base3, s:base01 ] ]

let s:p.normal.right = [ [ s:red, s:base02 ], [ s:base2, s:base01 ] ]

let s:p.inactive.left = copy(s:inactive)
let s:p.inactive.right = copy(s:inactive)

let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:inactive_bg ] ]
let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base3, s:base02 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:base02 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let g:lightline#colorscheme#mylightline#palette = lightline#colorscheme#flatten(s:p)
