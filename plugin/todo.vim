if exists("g:loaded_todo")
  finish
endif
let g:loaded_todo = 1

python << ENDPYTHON

import vim

def cmp_todo(l1, l2):
    if l1.startswith("x "):
        return 1
    if l2.startswith("x "):
        return -1
    return cmp(l1, l2)

def sort_todo():
    lines = list(vim.current.buffer)
    lines.sort(cmp=cmp_todo)
    vim.current.buffer[:] = lines

ENDPYTHON

function! SortTodo()
python << ENDPYTHON
sort_todo()
ENDPYTHON
endfunction

command! SortTodo :call SortTodo()
