if exists("g:loaded_todo")
  finish
endif
let g:loaded_todo = 1
" This syntax conflicts with Rainbow Parentheses Improved. We need to
" disable it
au BufRead * RainbowToggleOff


python3 << ENDPYTHON

import vim

def cmp_todo(l1, l2):
    if l1.startswith("x "):
        return 1
    if l2.startswith("x "):
        return -1
    return (l1 > l2) - (l1 < l2)

def sort_todo():
    lines = list(vim.current.buffer)
    lines.sort(key=lambda x: x, reverse=False)
    vim.current.buffer[:] = lines

ENDPYTHON

function! SortTodo()
python3 << ENDPYTHON
sort_todo()
ENDPYTHON
endfunction

command! SortTodo :call SortTodo()

"augroup vimtodo
"  au BufWritePre TODO.txt SortTodo
"augroup END
