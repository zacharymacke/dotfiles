" -------------------- Color Scheme -------------------- "
"  one half
function! OneHalfTheme()
	" one half scheme
	colorscheme onehalfdark
	let g:lightline = {
	      \ 'colorscheme': 'one',
	      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
	      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	      \ },
	      \ 'component_function': {
	      \   'gitbranch': 'fugitive#head'
	      \ },
	      \ }
	if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
	endif
endfunction


" snazzy 
function! SnazzyTheme()
	" colorscheme snazzy
	let g:lightline = {
	      \ 'colorscheme': 'snazzy',
	      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
	      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	      \ },
	      \ 'component_function': {
	      \   'gitbranch': 'fugitive#head'
	      \ },
	      \ }
	set noshowmode
	colorscheme snazzy
	if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
	endif
endfunction


"  nord
function! NordTheme()
	" one half scheme
	colorscheme nord
	let g:lightline = {
	      \ 'colorscheme': 'nord',
	      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
	      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	      \ },
	      \ 'component_function': {
	      \   'gitbranch': 'fugitive#head'
	      \ },
	      \ }
endfunction


"hybrid
function! HybridTheme()
	" hybrid scheme
	"let g:hybrid_custom_term_colors = 1
	colorscheme hybrid_material
	let g:enable_bold_font = 1
	let g:hybrid_transparent_background = 1
	let g:lightline = {
	      \ 'colorscheme': 'snazzy',
	      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
	      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	      \ },
	      \ 'component_function': {
	      \   'gitbranch': 'fugitive#head'
	      \ },
	      \ }
	if exists('+termguicolors')
		"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
	endif
endfunction


"neodark
function! NeodarkTheme()
	" neodark scheme
	colorscheme neodark
	let g:neodark#solid_vertsplit = 1
	let g:neodark#terminal_transparent = 1
	let g:hybrid_custom_term_colors = 1
	let g:lightline = {
	      \ 'colorscheme': 'neodark',
	      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
	      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	      \ },
	      \ 'component_function': {
	      \   'gitbranch': 'fugitive#head'
	      \ },
	      \ }
	if exists('+termguicolors')
		set termguicolors
	endif
endfunction


"material
function! MaterialTheme()
	" material scheme
	set background=dark
	colorscheme material
	"let g:material_theme_style = 'default'
	"let g:material_theme_style = 'palenight'
	let g:material_theme_style = 'dark'
	let g:lightline = {
	      \ 'colorscheme': 'material',
	      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
	      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	      \ },
	      \ 'component_function': {
	      \   'gitbranch': 'fugitive#head'
	      \ },
	      \ }
	if exists('+termguicolors')
		set termguicolors
	endif
endfunction

