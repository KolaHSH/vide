"-------------------------------------------"
"                                           "
"          theme config                     "
"                                           "
"-------------------------------------------"

" 这样子是为了goyo退出重新加载主题的时候能
" 重新加载自己的配置
function! s:patch_lucius_colors()

if has('termguicolors')
    set termguicolors
endif
" set termguicolors
" hi Normal     ctermbg=NONE guibg=NONE
    " hi LineNr     ctermbg=NONE guibg=NONE
    " hi SignColumn ctermbg=NONE guibg=NONE
" hi Comment guifg=#5C6370 ctermfg=59

hi Whitespace ctermfg=96 guifg=#725972 guibg=NONE ctermbg=NONE
hi NeomakeVirtualtextError ctermfg=124 guifg=#af0000 guibg=NONE ctermbg=NONE

endfunction

autocmd! ColorScheme gruvbox8 call s:patch_lucius_colors()
colorscheme gruvbox8

" autocmd! ColorScheme monokai call s:patch_lucius_colors()
" colorscheme monokai
" leaderf
"highlight Lf_hl_match gui=bold guifg=Red cterm=bold ctermfg=21
"highlight Lf_hl_matchRefine  gui=bold guifg=Magenta cterm=bold ctermfg=201
