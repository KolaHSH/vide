"
let g:repl_program = {
	\	"python": "python",
	\	"default": "bash"
	\	}

" " 指定退出命令
" let g:repl_exit_commands = {
"             \	"python": "quit()",
"             \	"bash": "exit",
"             \	"zsh": "exit",
"             \	"default": "exit",
"             \	}

" let g:repl_width = 100                           "窗口宽度
" let g:repl_height = None                          "窗口高度
" let g:sendtorepl_invoke_key = "<tab>"          "传送代码快捷键，默认为<leader>w
let g:repl_position = 3                             "0表示出现在下方，1表示出现在上方，2在左边，3在右边
let g:repl_stayatrepl_when_open = 0         "打开REPL时是回到原文件（1）还是停留在REPL窗口中（0）

" 整个块会一起发送
let g:repl_auto_sends = ['def ', 'class ']
