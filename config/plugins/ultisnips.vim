" ultisnips config begin
" if !empty(glob(plug_home."/ultisnips"))

let g:UltiSnipsSnippetsDir = '~/.cache/plugins/vim-snippets/'
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
"let g:UltiSnipsEditSplit="heroize"
" let g:UltiSnipsExpandTrigger       = '<C-R>'
" let g:UltiSnipsJumpForwardTrigger  = '<tab>'
" let g:UltiSnipsJumpForwardTrigger  = '<c-l>'
let g:UltiSnipsJumpForwardTrigger  = '<right>'
" let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<c-h>'
let g:UltiSnipsJumpBackwardTrigger = '<left>'

" if &filetype == "tex"
"     " 失败了
"     let g:UltiSnipsExpandTrigger = '<tab>'
"     let g:UltiSnipsJumpForwardTrigger = '<tab>'
"     let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" else
    let g:UltiSnipsExpandTrigger = "<nop>"
    let g:ulti_expand_or_jump_res = 0
    function! ExpandSnippetOrCarriageReturn()
        let snippet = UltiSnips#ExpandSnippetOrJump()
        if g:ulti_expand_or_jump_res > 0
            return snippet
        else
            return "\<CR>"
        endif
    endfunction

    inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
" endif

" endif
" ultisnips config end
