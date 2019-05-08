" ale config begin
" vim支持悬浮?
"let g:ale_set_balloons = 1
let g:ale_sign_column_always = 1

" 定义别名，vue代表css js ts，均使用eslint
let g:ale_linter_aliases = {'vue': ['css', 'javascript', 'typescript']}
let g:ale_linters = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'asm': ['gcc'],
            \   'nasm': ['nasm'],
            \   'c': ['cppcheck', 'clang'],
            \   'cpp': ['cppcheck', 'clang'],
            \   'cmake': ['cmake-format'],
            \   'python': ['pylint', 'flake8'],
            \   'javascript': ['eslint'],
            \   'cuda': ['nvcc'],
            \   'go': ['gofmt'],
            \   'java': ['javac'],
            \   'sh': ['language_server'],
            \   'lua': ['luac'],
            \   'yaml': ['prettier'],
            \   'latex': ['alex'],
            \   'vue': ['eslint'],
            \ }

" 使用开启列标志
let g:ale_sign_column_always = 1
" only run linters named in ale_linters seetings
let g:ale_linters_explicit = 1

" 高亮显示错误地方
" let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '=>'
let g:ale_sign_warning = '->'
"状态栏设置,状态栏中整合ale
let g:ale_statusline_format = ['ㄨ %d', 'ϟ %d', '✔ OK']
"提示栏设置，显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_format = '[%severity% %linter%] -> %s'
let g:ale_echo_msg_error_str = 'ㄨ'
let g:ale_echo_msg_warning_str = 'ϟ'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

"ccls
let g:ale_cpp_ccls_init_options = {
    \   'cache': {
    \       'directory': '/tmp/ccls/cache',
    \   },
    \ }
let g:ale_completion_enabled = 1
