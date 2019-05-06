# 使用coc补全

被coc圈粉了

## 简单使用

使用vim-plug安装：

```shell
Plug 'neoclide/coc.nvim',
            \ {
            \ 'tag': '*',
            \ 'do': './install.sh',
            \ }
```

配置：

coc.vim

```shell
"CoC configlet 
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
let g:coc_global_extensions =['coc-html','coc-css','coc-snippets','coc-prettier','coc-eslint','coc-emmet','coc-tsserver','coc-pairs','coc-json','coc-python','coc-imselect','coc-highlight','coc-git']

augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
```

## 项目

### java

https://github.com/neoclide/coc-java

1. CocCommand java.updateLanguageServer 安装jdt
2. CocCommand java.projectConfiguration.update  项目更新





## 快捷键

### coc

| 快捷键 | 模式 | 描述 |
| ------ | ---- | ---- |
|        |      |      |
|        |      |      |
|        |      |      |

