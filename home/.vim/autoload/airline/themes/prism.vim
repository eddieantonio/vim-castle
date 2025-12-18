" MIT License. Copyright (c) 2013-2021 Bailey Ling et al.
" vim: et ts=2 sts=2 sw=2 tw=80

scriptencoding utf-8

" copy-pasted from prism.vim:
" palette
let s:red = '#f44336'
let s:pink = '#e91e63'
let s:purple = '#9c27b0'
let s:deeppurple = '#673ab7'
let s:indigo = '#3f51b5'
let s:blue = '#2196f3'
let s:lightblue = '#03a9f4'
let s:cyan = '#00bcd4'
let s:teal = '#009688'
let s:green = '#4caf50'
let s:lightgreen = '#8bc34a'
let s:lime = '#cddc39'
let s:yellow = '#ffeb3b'
let s:amber = '#ffc107'
let s:orange = '#ff9800'
let s:deeporange = '#ff5722'
let s:brown = '#795548'
let s:grey = '#9e9e9e'
let s:bluegrey = '#607d8b'

let s:light_red = '#ff7961'
let s:light_pink = '#ff6090'
let s:light_purple = '#d05ce3'
let s:light_deeppurple = '#9a67ea'
let s:light_indigo = '#757de8'
let s:light_blue = '#6ec6ff'
let s:light_lightblue = '#67daff'
let s:light_cyan = '#62efff'
let s:light_teal = '#52c7b8'
let s:light_green = '#80e27e'
let s:light_lightgreen = '#bef67a'
let s:light_lime = '#ffff6e'
let s:light_yellow = '#ffff72'
let s:light_amber = '#fff350'
let s:light_orange = '#ffc947'
let s:light_deeporange = '#ff8a50'
let s:light_brown = '#a98274'
let s:light_grey = '#cfcfcf'
let s:light_bluegrey = '#8eacbb'

let s:dark_red = '#c62828'
let s:dark_pink = '#ad1457'
let s:dark_purple = '#6a1b9a'
let s:dark_deeppurple = '#4527a0'
let s:dark_indigo = '#283593'
let s:dark_blue = '#1565c0'
let s:dark_lightblue = '#0277bd'
let s:dark_cyan = '#00838f'
let s:dark_teal = '#00695c'
let s:dark_green = '#2e7d32'
let s:dark_lightgreen = '#558b2f'
let s:dark_lime = '#9e9d24'
let s:dark_yellow = '#f9a825'
let s:dark_amber = '#ff8f00'
let s:dark_orange = '#ef6c00'
let s:dark_deeporange = '#d84315'
let s:dark_brown = '#4e342e'
let s:dark_grey = '#424242'
let s:dark_bluegrey = '#37474f'

let s:accent_red = '#ff1744'
let s:accent_pink = '#f50057'
let s:accent_purple = '#d500f9'
let s:accent_deeppurple = '#651fff'
let s:accent_indigo = '#3d5afe'
let s:accent_blue = '#2979ff'
let s:accent_lightblue = '#00b0ff'
let s:accent_cyan = '#00e5ff'
let s:accent_teal = '#1de9b6'
let s:accent_green = '#00e676'
let s:accent_lightgreen = '#76ff03'
let s:accent_lime = '#c6ff00'
let s:accent_yellow = '#ffea00'
let s:accent_amber = '#ffc400'
let s:accent_orange = '#ff9100'
let s:accent_deeporange = '#ff3d00'

let s:white = '#fefefe'
let s:black = '#202020'
let s:darker_grey = '#424242'
let s:darkest_grey = '#363636'
let s:lighter_grey = '#dedede'
let s:lightest_grey = '#e9e9e9'

let s:none = 'NONE'

" Airline themes are generated based on the following concepts:
"   * The section of the status line, valid Airline statusline sections are:
"       * airline_a (left most section)
"       * airline_b (section just to the right of airline_a)
"       * airline_c (section just to the right of airline_b)
"       * airline_x (first section of the right most sections)
"       * airline_y (section just to the right of airline_x)
"       * airline_z (right most section)
"   * The mode of the buffer, as reported by the :mode() function.  Airline
"     converts the values reported by mode() to the following:
"       * normal
"       * insert
"       * replace
"       * visual
"       * inactive
"       * terminal
"       The last one is actually no real mode as returned by mode(), but used by
"       airline to style inactive statuslines (e.g. windows, where the cursor
"       currently does not reside in).
"   * In addition to each section and mode specified above, airline themes
"     can also specify overrides.  Overrides can be provided for the following
"     scenarios:
"       * 'modified'
"       * 'paste'
"
" Airline themes are specified as a global viml dictionary using the above
" sections, modes and overrides as keys to the dictionary.  The name of the
" dictionary is significant and should be specified as:
"   * g:airline#themes#<theme_name>#palette
" where <theme_name> is substituted for the name of the theme.vim file where the
" theme definition resides.  Airline themes should reside somewhere on the
" 'runtimepath' where it will be loaded at vim startup, for example:
"   * autoload/airline/themes/theme_name.vim

let g:airline#themes#prism#palette = {}

" Keys in the dictionary are composed of the mode, and if specified the
" override.  For example:
"   * g:airline#themes#prism#palette.normal
"       * the colors for a statusline while in normal mode
"   * g:airline#themes#prism#palette.normal_modified
"       * the colors for a statusline while in normal mode when the buffer has
"         been modified
"   * g:airline#themes#prism#palette.visual
"       * the colors for a statusline while in visual mode
"
" Values for each dictionary key is an array of color values that should be
" familiar for colorscheme designers:
"   * [guifg, guibg, ctermfg, ctermbg, opts]
" See "help attr-list" for valid values for the "opt" value.
"
" Each theme must provide an array of such values for each airline section of
" the statusline (airline_a through airline_z).  A convenience function,
" airline#themes#generate_color_map() exists to mirror airline_a/b/c to
" airline_x/y/z, respectively.

" The prism.vim theme:
let s:airline_a_normal   = [ s:white , s:dark_bluegrey , s:none  , s:none ]
let s:airline_b_normal   = [ s:white , s:bluegrey , s:none , s:none ]
let s:airline_c_normal   = [ s:white , s:dark_grey , s:none  , s:none ]
let g:airline#themes#prism#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

" It should be noted the above is equivalent to:
" let g:airline#themes#prism#palette.normal = airline#themes#generate_color_map(
"    \  [ '#00005f' , '#dfff00' , 17  , 190 ],  " section airline_a
"    \  [ '#ffffff' , '#444444' , 255 , 238 ],  " section airline_b
"    \  [ '#9cffd3' , '#202020' , 85  , 234 ]   " section airline_c
"    \)
"
" In turn, that is equivalent to:
" let g:airline#themes#prism#palette.normal = {
"    \  'airline_a': [ '#00005f' , '#dfff00' , 17  , 190 ],  "section airline_a
"    \  'airline_b': [ '#ffffff' , '#444444' , 255 , 238 ],  "section airline_b
"    \  'airline_c': [ '#9cffd3' , '#202020' , 85  , 234 ],  "section airline_c
"    \  'airline_x': [ '#9cffd3' , '#202020' , 85  , 234 ],  "section airline_x
"    \  'airline_y': [ '#ffffff' , '#444444' , 255 , 238 ],  "section airline_y
"    \  'airline_z': [ '#00005f' , '#dfff00' , 17  , 190 ]   "section airline_z
"    \}
"
" airline#themes#generate_color_map() also uses the values provided as
" parameters to create intermediary groups such as:
"   airline_a_to_airline_b
"   airline_b_to_airline_c
"   etc...

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#prism#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#prism#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }


let s:airline_a_insert = [ s:black , s:cyan, 17  , 45  ]
let s:airline_b_insert = [ s:white , s:light_bluegrey , 255 , 27  ]
let s:airline_c_insert = [ s:white , s:dark_grey , 15  , 17  ]
let g:airline#themes#prism#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#prism#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#prism#palette.insert_paste = {
      \ 'airline_a': [ s:airline_a_insert[0]   , '#d78700' , s:airline_a_insert[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#prism#palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

let g:airline#themes#prism#palette.replace = copy(g:airline#themes#prism#palette.insert)
let g:airline#themes#prism#palette.replace.airline_a = [ s:airline_b_insert[0]   , '#af0000' , s:airline_b_insert[2] , 124     , ''     ]
let g:airline#themes#prism#palette.replace_modified = g:airline#themes#prism#palette.insert_modified


let s:airline_a_visual = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:airline_b_visual = [ '#000000' , '#ff5f00' , 232 , 202 ]
let s:airline_c_visual = [ '#ffffff' , '#5f0000' , 15  , 52  ]
let g:airline#themes#prism#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#prism#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }


let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#prism#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#prism#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }

" For commandline mode, we use the colors from normal mode, except the mode
" indicator should be colored differently, e.g. light green
let s:airline_a_commandline = [ '#00005f' , '#00d700' , 17  , 40 ]
let s:airline_b_commandline = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:airline_c_commandline = [ '#9cffd3' , '#202020' , 85  , 234 ]
let g:airline#themes#prism#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#prism#palette.accents = {
      \ 'red': [ s:accent_red , '' , '' , ''  ]
      \ }
