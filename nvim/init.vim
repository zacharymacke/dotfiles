"-------------------- Load External Config Files -------------------- "
source ~/.config/nvim/colorschemes.vim
source ~/.config/nvim/functions.vim
"-------------------- Plugins -------------------- "
call plug#begin()

" Utility
Plug 'w0rp/ale',
Plug 'scrooloose/nerdtree',
Plug 'tpope/vim-commentary',
Plug 'majutsushi/tagbar',
Plug 'tpope/vim-surround',
Plug 'airblade/vim-gitgutter',
Plug 'tpope/vim-fugitive',

" Syntax/Language
Plug 'jiangmiao/auto-pairs',
Plug 'ryanoasis/vim-devicons',
Plug 'pangloss/vim-javascript',
Plug 'jelera/vim-javascript-syntax',
Plug 'othree/yajs.vim',
Plug 'othree/html5.vim',
Plug 'hail2u/vim-css3-syntax',
Plug 'lilydjwg/colorizer',
Plug 'elzr/vim-json',
Plug 'Yggdroot/indentLine',
Plug 'mxw/vim-jsx',
Plug 'epilande/vim-react-snippets',
Plug 'SirVer/ultisnips',
Plug 'ryanoasis/vim-devicons',
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' },
Plug 'junegunn/fzf.vim',
Plug '/usr/local/opt/fzf',


Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript','css','json', 'html'] }
Plug 'ternjs/tern_for_vim',
Plug 'mattn/emmet-vim',


" deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" setting runtimepath to enable custom deoplete funtions
set runtimepath+=~/.config/nvim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
\ 'max_list': 10,
\ 'ignore_case': 'true',
\ })
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' },
autocmd FileType javascript nnoremap <buffer> <leader>d :TernDoc<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" tern config
autocmd FileType javascript nnoremap <buffer> <leader>d :TernDoc<CR>
autocmd VimEnter * noremap <leader>c :pc<CR>
let g:deoplete#sources#ternjs#include_keywords = 1

" Theme
Plug 'arcticicestudio/nord-vim',
Plug 'sonph/onehalf',
Plug 'connorholyday/vim-snazzy',
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes'
Plug 'kaicataldo/material.vim',
Plug 'KeitaNakamura/neodark.vim',
Plug 'mhartington/oceanic-next',
Plug 'flrnprz/plastic.vim',

call plug#end()

" -------------------- personalization -------------------- "
set autoindent
set nu
set title
set ignorecase
set smartcase
set mouse=
let mapleader = ","

" set tabs 
set tabstop=4 shiftwidth=4 expandtab
set nowrap
set hidden 
set lazyredraw
set ttyfast
set undofile
set noswapfile
set laststatus=2
set fillchars+=vert:│
set formatoptions+=t
set history=1000
set noerrorbells " Disable error bells
set scrolloff=5 " Keep 3 lines below and above the cursor



" fix navigation with vim split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural split
set splitbelow
set splitright

" Specifying js linter
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript' : ['eslint'],
\}
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1

set noshowmode
let g:user_emmet_leader_key='<leader>'
noremap <Leader>y "*y
noremap <Leader>w :wall<CR>
noremap <Leader>f :foldclose<CR>

let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#ale#error_symbol='• '
let g:airline#extensions#ale#warning_symbol='•  '
let g:airline#extensions#tabline#show_splits = 0

let g:indentLine_color_gui = '#343d46'
set signcolumn="yes"
let g:gitgutter_enabled = 1
set updatetime=100
set nohlsearch
let g:UltiSnipsExpandTrigger='<leader>g'



" -------------------- External Function Calls -------------------- "
" Vim-Devicons --------------------------------------------------------------{{{
let g:NERDTreeGitStatusNodeColorization = 1
" 
let g:webdevicons_enable_denite = 0
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

map<leader>l :call RunBrowser()<cr>
map<leader>t :NERDTreeToggle<cr>
map<leader>1 :tabfirst<cr>
map<leader>2 :tablast<cr>
let NERDTreeMapOpenInTab='<leader> <ENTER>'

" Enable Nerd Tree
"call NerdTree()

set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20

set termguicolors
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:airline_theme='oceanicnext'
let g:webdevicons_enable_airline_statusline = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#mike#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#branch#format = 0
let g:airline_detect_spelllang=0
let g:airline_detect_spell=0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_c = '%f%m'
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%l:%c'

let g:airline_symbols.branch = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Set theme
"call NeodarkTheme()
"call SnazzyTheme()
"call HybridTheme()
"call OneHalfTheme()
"call MaterialTheme()
"call NordTheme()
nnoremap <silent> <leader>a :call ReloadBrowser()<CR>
set guifont=:h

if !empty($TMUX)
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>[6 q\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
endif
