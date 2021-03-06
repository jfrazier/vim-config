let g:airline#themes#kolorzalt#palette = {}

let s:N1 = [ '#e2e2e2' , '#4f3598' , 251 , 32  ]
let s:N2 = [ '#ff5fd7' , '#242322' , 32  , 233 ]
let s:N3 = [ '#e2e2e2' , '#4a4a4a' , 251 , 235 ]

let g:airline#themes#kolorzalt#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#kolorzalt#palette.normal_modified = {
      \ 'airline_c': [ '#e2e2e2' , '#4f3598' , 16    , 32      , ''     ] ,
      \ }


let s:I1 = [ '#242322' , '#7eaefd' , 16 , 166 ]
let s:I2 = [ '#75d7d8' , '#242322' , 166  , 16 ]
let s:I3 = [ '#e2e2e2' , '#4a4a4a' , 254 , 238 ]
let g:airline#themes#kolorzalt#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#kolorzalt#palette.insert_modified = {
      \ 'airline_c': [ '#242322' , '#7eaefd' , 166     , 16     , ''     ] ,
      \ }


let g:airline#themes#kolorzalt#palette.replace = copy(g:airline#themes#kolorzalt#palette.insert)
let g:airline#themes#kolorzalt#palette.replace.airline_a = [ s:I2[0]   , '#005154' , s:I2[2] , 16      , ''     ]
let g:airline#themes#kolorzalt#palette.replace_modified = {
      \ 'airline_c': [ '#e2e2e2' , '#005154' , 254 , 16  , '' ] ,
      \ }



let s:V1 = [ '#242322' , '#e6987a' , 252 , 22 ]
let s:V2 = [ '#dbc570' , '#242322' , 22 , 252 ]
let s:V3 = [ '#e2e2e2' , '#4a4a4a' , 254 , 238 ]
let g:airline#themes#kolorzalt#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#kolorzalt#palette.visual_modified = {
      \ 'airline_c': [ '#242322' , '#e6987a' , 234     , 28      , ''     ] ,
      \ }


let s:IA1 = [ '#b2b2b2' , '#4a4a4a' , 247 , 238 , '' ]
let s:IA2 = [ '#b2b2b2' , '#4a4a4a' , 247 , 238 ]
let s:IA3 = [ '#b2b2b2' , '#4a4a4a' , 247 , 238 , '' ]
let g:airline#themes#kolorzalt#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#kolorzalt#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 32 , '' , '' ] ,
      \ }


let g:airline#themes#kolorzalt#palette.accents = {
      \ 'red': [ '#d96e8a' , '' , 27 , ''  ]
      \ }


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#kolorzalt#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e2e2e2' , '#4a4a4a' , 254 , 238 , ''     ],
      \ [ '#e2e2e2' , '#242322' , 254 , 234 , ''     ],
      \ [ '#e2e2e2' , '#4f3598' , 254 , 39  , 'bold' ])
