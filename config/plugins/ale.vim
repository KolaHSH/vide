" ale config begin
" if !empty(glob(plug_home."/ale"))
" ale 也可以格式化代码了, 不太好用感觉
" let g:ale_fixers = {
"     \   '*': ['remove_trailing_lines', 'trim_whitespace'],
"     \   'c': ['astyle', '--style=google'],
"     \   'cpp': ['astyle', '--style=google'],
"     \   'python': ['autopep8', '--in-place --aggressive'],
"     \   'javascript': ['prettier', 'eslint'],
"     \   'java': ['astyle --style=java'],
"     \}

" vim支持悬浮?
let g:ale_set_balloons = 1

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
            \   'cuda': ['nvcc'],
            \   'go': ['gofmt'],
            \   'java': ['javac'],
            \   'javascript': ['eslint'],
            \   'shell': ['shell -n flag'],
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
let g:ale_set_highlights = 1
"自定义error和warning图标
" let g:ale_sign_error = 'X'
" let g:ale_sign_warning = '⚡'
"状态栏设置,状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"提示栏设置，显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_format = '[%severity% %linter%] -> %s'
let g:ale_echo_msg_error_str = '✗'
let g:ale_echo_msg_warning_str = '⚡'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" 如果安装在中文系统上，java会提示会乱码，设置下面的内容
" let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'

" endif
" ale config end

