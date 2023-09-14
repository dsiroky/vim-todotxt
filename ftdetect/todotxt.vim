" Va in conflitto con Rainbow Parentheses Improved
" https://github.com/luochen1990/rainbow: toggle off nel plugin -AP- 2023-09-11
"
" 2023-09-13: added patterns from David Beniamine "todo.txt.vim"
"             http://github.com/dbeniamine/todo.txt-vim
"
autocmd BufNewFile,BufRead TODO.txt set filetype=todotxt 
"autocmd BufNewFile,BufRead TODO.txt set filetype=todotxt | RainbowToggleOff
"autocmd BufNewFile,BufRead *todo.txt set filetype=todotxt | RainbowToggleOff
"
autocmd BufNewFile,BufRead [Tt]odo.txt set filetype=todotxt
autocmd BufNewFile,BufRead [Tt]odo-\d\\\{4\}-\d\\\{2\}-\d\\\{2\}.txt set filetype=todotxt
autocmd BufNewFile,BufRead [Tt]odo-\d\\\{4\}-\d\\\{2\}.txt set filetype=todotxt
autocmd BufNewFile,BufRead \d\\\{4\}-\d\\\{2\}-\d\\\{2\}-[Tt]odo.txt set filetype=todotxt
autocmd BufNewFile,BufRead \d\\\{4\}-\d\\\{2\}-[Tt]odo.txt set filetype=todotxt
autocmd BufNewFile,BufRead [Tt]oday.txt set filetype=todotxt
autocmd BufNewFile,BufRead [Dd]one.txt set filetype=todotxt
autocmd BufNewFile,BufRead [Dd]one-\d\\\{4\}-\d\\\{2\}-\d\\\{2\}.txt set filetype=todotxt
autocmd BufNewFile,BufRead [Dd]one-\d\\\{4\}-\d\\\{2\}.txt set filetype=todotxt
autocmd BufNewFile,BufRead \d\\\{4\}-\d\\\{2\}-\d\\\{2\}-[Dd]one.txt set filetype=todotxt
autocmd BufNewFile,BufRead \d\\\{4\}-\d\\\{2\}-[Dd]one.txt set filetype=todotxt
autocmd BufNewFile,BufRead [Dd]one-[Tt]oday.txt set filetype=todotxt
autocmd BufNewFile,BufRead */.todo/*.txt set filetype=todotxt

