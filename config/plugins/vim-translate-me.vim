" let g:vtm_popup_window='floating'

" 普通模式，<Leader>d 翻译光标下的文本，在命令行回显翻译内容
nmap <silent> <Leader>t <Plug>Translate
" 可视模式，<Leader>d 翻译光标下的文本，在命令行回显翻译内容
vmap <silent> <Leader>t <Plug>TranslateV
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

let g:vtm_default_api='youdao'
let g:vtm_default_to_lang='en'
