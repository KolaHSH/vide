
" 使用大写C快速打开用户配置文件
" function! SetupCommandAbbrs(from, to)
"   exec 'cnoreabbrev <expr> '.a:from
"         \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
"         \ .'? ("'.a:to.'") : ("'.a:from.'"))'
" endfunction

" " Use C to open coc config
" call SetupCommandAbbrs('C', 'CocConfig')
"
"

" 使用tab或者自定义按键来触发补全
" tab 补全并移动到下一个补全项
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
" 使用ctrl space完成补全
" inoremap <silent><expr> <c-space> coc#refresh()
"

" 回车完成代码块
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
