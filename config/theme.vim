function! s:patch_lucius_colors()
    if has('termguicolors')
        set termguicolors
    endif
    " hi Normal     ctermbg=NONE guibg=NONE
    hi LineNr     ctermbg=NONE guibg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    " set background=light

endfunction

autocmd! colorscheme hybrid_reverse call s:patch_lucius_colors()
colorscheme hybrid_reverse

" set background=light
" colorscheme PaperColor

"------------------------------------------------------"
" 设置vim搜索匹配项的颜色
hi Search cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE
hi IncSearch cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE
hi QuickFixLine cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE

"-------------------------leaderf----------------------"
" 设置LeaderF搜索匹配项的颜色
highlight Lf_hl_rgHighlight guifg=#FFFF00 guibg=NONE ctermfg=yellow ctermbg=NONE
highlight Lf_hl_match gui=bold guifg=Red cterm=bold ctermfg=21
highlight Lf_hl_matchRefine  gui=bold guifg=Magenta cterm=bold ctermfg=201

