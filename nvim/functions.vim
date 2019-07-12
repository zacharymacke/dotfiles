" -------------------- Functions -------------------- "
" Open nerd tree and tagbar at once
function! ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1
    " Perform the appropriate action
    if nerdtree_open && tagbar_open
        NERDTreeClose
        TagbarClose
    elseif nerdtree_open
        TagbarOpen
    elseif tagbar_open
        NERDTree
    else
        NERDTree
        TagbarOpen
    endif
    " Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction
nnoremap <leader>\ :call ToggleNERDTreeAndTagbar()<CR>


map <leader>l :call RunBrowser() <cr>
function RunBrowser()
  exec "! open index.html"
endfunction


" Run js file in current buffer with leader + r
map <leader>r :call Run() <cr>
function Run()
  exec "! node %"
endfunction


" nerd tree config
map <leader>t :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeWinSize = 20
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" don't always want nerd tree on
function! NerdTree()
	 au VimEnter *  NERDTree
	 autocmd VimEnter * wincmd p
	 "let g:NERDTreeWinPos = "right"
endfunction
"call NerdTree()

function! ReloadBrowser()
	write
  silent !osascript ~/.config/nvim/refresh-chrome.applescript
endfunction

