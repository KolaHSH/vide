let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" 根据文件类型关闭
autocmd FileType c,h,cpp,hpp,python,javascript,java,go,ts
       \ call deoplete#custom#buffer_option('auto_complete', v:false)
