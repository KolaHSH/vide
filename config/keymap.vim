"------------------------------------------- base key map
inoremap jk <esc>
nnoremap ;; <esc>:
nnoremap q <esc>:close<cr>
vnoremap q <esc>:close<cr>
nnoremap <BackSpace> :nohl<cr>
" 窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-s> <C-w>s
noremap <C-v> <C-w>v
"noremap <C-a> <esc>ggVG

"------------------------------------------- ale
nmap <silent> [[ <Plug>(ale_previous_wrap)
nmap <silent> ]] <Plug>(ale_next_wrap)
" nn <silent> <M-d> :ALEGoToDefinition<cr>
" nn <silent> <M-r> :ALEFindReferences<cr>
" nn <silent> <M-a> :ALESymbolSearch<cr>
" nn <silent> <M-h> :ALEHover<cr>

"------------------------------------------- airline buffer
" airline key map
nmap <M-h> <Plug>AirlineSelectPrevTab
nmap <M-l> <Plug>AirlineSelectNextTab

"------------------------------------------- leaderf
nnoremap <M-f> :LeaderfFile<CR>
nnoremap <M-t> :LeaderfBufTag<CR>
nnoremap <M-T> :LeaderfBufTagAll<CR>
nnoremap <M-b> :LeaderfBufferAll<CR>
nnoremap <M-s> :LeaderfLine<CR>
nnoremap <M-S> :LeaderfLineAll<CR>
nnoremap <M-r> :LeaderfMru<CR>

"------------------------------------------- easymotion
nmap <M-k> <Plug>(easymotion-overwin-f)
" Move to line
nmap <M-j> <Plug>(easymotion-overwin-line)

"------------------------------------------- goyo
nnoremap <F7> <esc>:Goyo<cr>

"------------------------------------------- ChooseWin
nnoremap <silent> <M-w> :ChooseWin<CR>

"------------------------------------------- Autoformat
nnoremap <c-i> :Autoformat<cr>

"------------------------------------------- defx
function Open_cur_file_dir()
    let g:cur_dir = expand("%:p:h")
    exec 'Defx '.g:cur_dir
endfunction

nnoremap <F2> <esc>:call Open_cur_file_dir()<cr>

"------------------------------------------- matchtag
nnoremap <space>5 :MtaJumpToOtherTag<cr>

"------------------------------------------- vimtranslateme
nmap <silent> <M-d> <Plug>TranslateW
vmap <silent> <M-d> <Plug>TranslateWV
nmap <silent> <Leader>r <Plug>TranslateR
vmap <silent> <Leader>r <Plug>TranslateRV

"------------------------------------------- mundo
map <F4> <esc>:MundoToggle<cr>

"------------------------------------------- Startify
noremap <leader>s <esc>:Startify<cr>

