"
" This is my gvimrc, there are many like it but this one is mine.
"

set guifont=hack:h10:cANSI      " https://github.com/source-foundry/Hack
set go-=r                       " Don't like the right scroll bar.
set go-=L                       " Don't like the left scroll bar either.
set go-=t                       " No tearoff menu entries.

set columns=85
set lines=40

" Go full screen after GUI start-up for any file.
autocmd GUIEnter * simalt ~x

