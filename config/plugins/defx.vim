" defx config begin
" if !empty(glob(plug_home."/defx.nvim"))

    " function! Root(path) abort
    "   return fnamemodify(a:path, ':t')
    " endfunction

    " call defx#custom#source('file', {
    "      \ 'root': 'Root',
    "      \})

    call defx#custom#option('_', {
                \ 'winwidth': 30,
                \ 'split': 'vertical',
                \ 'direction': 'leftabove',
                \ 'show_ignored_files': 0,
                \ 'buffer_name': '',
                \ 'toggle': 1,
                \ 'resume': 1,
                \ 'columns': "git:mark:indent:icon:icons:filename:type"
                \ })

    call defx#custom#column('filename', {
                \ 'directory_icon': '▸',
                \ 'opened_icon': '▾',
                \ 'root_icon': ' ',
                \ 'min_width': 40,
                \ 'max_width': 40,
                \ })

    call defx#custom#column('mark', {
                \ 'readonly_icon': '✗',
                \ 'selected_icon': '✓',
                \ })

    call defx#custom#column('icon', {
                \ 'readonly_icon': '✗',
                \ 'selected_icon': '✓',
                \ })

    autocmd FileType defx call s:defx_my_settings()
    function! s:defx_my_settings() abort

        nnoremap <silent><buffer><expr> '
                    \ defx#do_action('toggle_select') . 'j'  " '选中并移动到下一行
        nnoremap <silent><buffer><expr> *
                    \ defx#do_action('toggle_select_all')
        nnoremap <silent><buffer><expr> X              " 使用系统默认软件打开
                    \ defx#do_action('execute_system')
        nnoremap <silent><buffer><expr> yy
                    \ defx#do_action('copy')
        nnoremap <silent><buffer><expr> q
                    \ defx#do_action('quit')
        nnoremap <silent><buffer><expr> m
                    \ defx#do_action('move')
        nnoremap <silent><buffer><expr> p
                    \ defx#do_action('paste')
        nnoremap <silent><buffer><expr> h
                    \ defx#is_opened_tree() ?
                    \ defx#do_action('close_tree') : defx#do_action('cd', ['..'])
        nnoremap <silent><buffer><expr> l
                    \ defx#do_action('call', 'DefxSmartL')
        nnoremap <silent><buffer><expr> o
                    \ defx#do_action('call', 'DefxSmartL')
        nnoremap <silent><buffer><expr> <Cr>
                    \ defx#is_directory() ?
                    \ defx#do_action('open_directory') : defx#do_action('drop')
        nnoremap <silent><buffer><expr> <2-LeftMouse>
                    \ defx#is_directory() ?
                    \ defx#do_action('open_tree') : defx#do_action('drop')
        nnoremap <silent><buffer><expr> sv
                    \ defx#do_action('drop', 'vsplit')
        nnoremap <silent><buffer><expr> sh
                    \ defx#do_action('drop', 'split')
        nnoremap <silent><buffer><expr> st
                    \ defx#do_action('drop', 'tabedit')
        nnoremap <silent><buffer><expr> S
                    \ defx#do_action('toggle_sort', 'time')
        nnoremap <silent><buffer><expr> P
                    \ defx#do_action('open', 'pedit')
        nnoremap <silent><buffer><expr> N
                    \ defx#do_action('new_file')
        nnoremap <silent><buffer><expr> dd
                    \ defx#do_action('remove_trash')
        nnoremap <silent><buffer><expr> r
                    \ defx#do_action('rename')
        nnoremap <silent><buffer><expr> .
                    \ defx#do_action('toggle_ignored_files')
        nnoremap <silent><buffer><expr> ~
                    \ defx#do_action('cd')
        nnoremap <silent><buffer><expr> !
                    \ defx#do_action('execute_command')
        nnoremap <silent><buffer><expr> j
                    \ line('.') == line('$') ? 'gg' : 'j'
        nnoremap <silent><buffer><expr> k
                    \ line('.') == 1 ? 'G' : 'k'
        nnoremap <silent><buffer><expr> <C-r>
                    \ defx#do_action('redraw')
        nnoremap <silent><buffer><expr> <C-g>
                    \ defx#do_action('print')
        nnoremap <silent><buffer><expr> cd
                    \ defx#do_action('change_vim_cwd')
        " nnoremap <silent><buffer><expr> cd
        "             \ defx#do_action('open_directory')
    endf

    " in this function we should vim-choosewin if possible
    function! DefxSmartL(_)
        if defx#is_directory()
            call defx#call_action('open_tree')
            normal! j
        else
            let filepath = defx#get_candidate()['action__path']
            if tabpagewinnr(tabpagenr(), '$') >= 3    " if there are more than 2 normal windows
                if exists(':ChooseWin') == 2
                    ChooseWin
                else
                    if has('nvim')
                        let input = input({
                                    \ 'prompt'      : 'ChooseWin No.: ',
                                    \ 'cancelreturn': 0,
                                    \ })
                        if input == 0 | return | endif
                    else
                        let input = input('ChooseWin No.: ')
                    endif
                    if input == winnr() | return | endif
                    exec input . 'wincmd w'
                endif
                exec 'e' filepath
            else
                exec 'wincmd w'
                exec 'e' filepath
            endif
        endif
    endfunction

" endif
" defx config end
