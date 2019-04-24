" ultisnips config begin
" if !empty(glob(plug_home."/ultisnips"))

let g:UltiSnipsSnippetsDir = '~/.cache/nvim_plugins/vim-snippets'
"let g:UltiSnipsEditSplit="heroize"
" let g:UltiSnipsExpandTrigger       = '<C-R>'
" let g:UltiSnipsJumpForwardTrigger  = '<tab>'
" let g:UltiSnipsJumpForwardTrigger  = '<c-l>'
let g:UltiSnipsJumpForwardTrigger  = '<right>'
" let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<c-h>'
let g:UltiSnipsJumpBackwardTrigger = '<left>'


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
" ultisnips config end
