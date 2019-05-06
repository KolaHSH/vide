"
"-------------------------------------------"
"                                           "
"          key map                          "
"                                           "
"-------------------------------------------"
"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" base key map
inoremap jk <esc>
nnoremap ;; <esc>:
nnoremap q <esc>:close<cr>
vnoremap q <esc>:close<cr>
nnoremap <BackSpace> :nohl<cr>
"map <F4> <esc>:wal<cr>
" noremap u uzz
" 窗口
noremap <C-left> <C-w><C-h>
noremap <C-down> <C-w><C-j>
noremap <C-up> <C-w><C-k>
noremap <C-right> <C-w><C-l>
" noremap <F10> <esc>:lopen<cr>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" youcompleteme key map
" 快速跳转
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" ale key map
" 跳转到上一个警告或者错误处
nmap <silent> <c-k> <Plug>(ale_previous_wrap)
nmap <silent> <c-j> <Plug>(ale_next_wrap)
nn <silent> <M-d> :ALEGoToDefinition<cr>
nn <silent> <M-r> :ALEFindReferences<cr>
nn <silent> <M-a> :ALESymbolSearch<cr>
nn <silent> <M-h> :ALEHover<cr>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" airline key map
" 选择前一个buffer
" 不使用这个了
nmap <c-h> <Plug>AirlineSelectPrevTab
nmap <c-l> <Plug>AirlineSelectNextTab
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" leaderf key map
nnoremap <leader>f :LeaderfFile<CR>
nnoremap <M-t> :LeaderfBufTag<CR>
nnoremap <M-T> :LeaderfBufTagAll<CR>
nnoremap <M-b> :LeaderfBuffer<CR>
nnoremap <M-s> :LeaderfLine<CR>
nnoremap <M-S> :LeaderfLineAll<CR>
nnoremap <M-r> :LeaderfMru<CR>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" easymotion key map
" 用什么作为开头
"map <M> <Plug>(easymotion-prefix)

" 使用f+char
" map <M-l> <Plug>(easymotion-lineforward)
" map <M-j> <Plug>(easymotion-j)
" map <M-k> <Plug>(easymotion-k)
" 使用F+char
" map <M-h> <Plug>(easymotion-linebackward)
" move to char
" map <M-k> <Plug>(easymotion-bd-f)
nmap <M-k> <Plug>(easymotion-overwin-f)
" Move to line
" map <M-l> <Plug>(easymotion-bd-jk)
nmap <M-l> <Plug>(easymotion-overwin-line)
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" goyo key map
nnoremap <F7> <esc>:Goyo<cr>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" choosewin key map
nnoremap <silent> <M-w> :ChooseWin<CR>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" smooth scroll key map
" scroll代表半屏，distance duration speed
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 6, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 6, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 8, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 8, 4)<CR>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" nerdcommenter key map
" brief:
" <leader> ca 切换模式
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" autoformat key map
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
nnoremap <c-I> :Autoformat<cr>


"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" defx
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
function Open_cur_file_dir()
    let g:cur_dir = expand("%:p:h")
    exec 'Defx '.g:cur_dir
endfunction

" nnoremap <F2> <esc>:Defx<cr>
" nnoremap <M-o> <esc>:call Open_cur_file_dir()<cr>
nnoremap <F2> <esc>:call Open_cur_file_dir()<cr>
"
"
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" MatchTagAlways
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
nnoremap <leader>% :MtaJumpToOtherTag<cr>

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" asyncrun
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
noremap <F9> :call asyncrun#quickfix_toggle(12)<cr>

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" vim-transtrateme
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" 普通模式，<Leader>d 翻译光标下的文本，在命令行回显翻译内容
" nmap <silent> <Leader>t <Plug>Translate
" 可视模式，<Leader>d 翻译光标下的文本，在命令行回显翻译内容
" vmap <silent> <Leader>t <Plug>TranslateV
" 普通模式，<Leader>w 翻译光标下的文本，在窗口中显示翻译内容
" nmap <silent> <Leader>w <Plug>TranslateW
nmap <silent> <M-d> <Plug>TranslateW
" 可视模式，<Leader>w 翻译光标下的文本，在窗口中显示翻译内容
" vmap <silent> <Leader>w <Plug>TranslateWV
vmap <silent> <M-d> <Plug>TranslateWV
" 普通模式，<Leader>r 替换光标下的文本为翻译内容
nmap <silent> <Leader>r <Plug>TranslateR
" 可视模式，<Leader>r 替换光标下的文本为翻译内容
vmap <silent> <Leader>r <Plug>TranslateRV


"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" vim-expand-region
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" map J <Plug>(expand_region_expand)
" map K <Plug>(expand_region_shrink)
"
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" vim-mundo
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
map <F4> <esc>:MundoToggle<cr>

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" startify
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
noremap <leader>s <esc>:Startify<cr>
