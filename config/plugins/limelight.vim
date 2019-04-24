" limelight config begin

" if !empty(glob(plug_home."/limelight.vim"))
    let g:limelight_conceal_ctermfg = 'gray'
    let g:limelight_conceal_ctermfg = 240
    let g:limelight_conceal_guifg = 'DarkGray'
    let g:limelight_conceal_guifg = '#777777'
    let g:limelight_default_coefficient = 0.7
    " 启动goyo的时候自动启动limelight
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!

" endif
" limelight config end
