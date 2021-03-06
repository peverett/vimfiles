"
" This is my vimrc, there are many like it but this one is mine.
"

" Use Vim setting, rather than Vi Settings. This must be first because it
" changes other settings as a side effect.
set nocompatible
filetype off

filetype plugin indent on

"
" Look and feel
"
if v:version > 703
  set colorcolumn=80                " Nice to know where col 80 is.
endif

set number                          " Show line numbers (left hand side).
set showcmd                         " Show command in bottom bar.
set laststatus=2                    " Always show the status line.
set history=50                      " Keep 50 lines of command history
set ruler                           " Show the cursor position all the time
set wildmenu                        " Completion on commands
set lazyredraw                      " Redraw only when we need to.

" Move vertically by visual line (when line wrap on long lines).
nnoremap j gj
nnoremap k gk

" Highlight last inserted text (nice to have).
nnoremap gV `[v`]

" Spaces and tabs - don't forget you can use 'set list!' to see chars.
set tabstop=4                       " Number of visual spaces per TAB
set softtabstop=4                   " Number of spaces in tab when editing
set expandtab                       " Always use spaces instead of <TAB>
set shiftwidth=4                    " Automatic indentation is 4-spaces.

" Incremental search - VIM's killer feature
set incsearch                       " Turn on incremental search
set smartcase                       " Only case-sensitive if you use captials

"
" Backup and undo options
"
set backup                          " Keep a backup file.
set undofile                        " And an undo file.

" Don't clutter up the current working directory unless you have to
set backupdir=~/vimfiles/tmp,~/.vim/tmp,.
set directory=~/vimfiles/tmp,~/.vim/tmp,.
set undodir=~/vimfiles/tmp,~/.vim/tmp,.

"
" Straight from Bram's example VIMRC
"
" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors.
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif
"
" Platform specific configuration options.
"
if has('win32')

  "source $VIMRUNTIME/mswin.vim      " Go with the flow.
  "In Vim 8.0 CTRL-F became :promptfind, which I detest. so I now I roll
  "a more 'pure' vim experience on windows. I also did away with windows
  "control keys for copy, cut, paste, etc...

  " backspace and cursor keys wrap to previous/next line
  set backspace=indent,eol,start whichwrap+=<,>,[,]

  " backspace in Visual mode deletes selection
  vnoremap <BS> d

  " Use CTRL-S for saving, also in Insert mode
  noremap <C-S>     :update<CR>
  vnoremap <C-S>    <C-C>:update<CR>
  inoremap <C-S>    <C-O>:update<CR>

  " Alt-Space is System menu
  if has("gui")
      noremap <M-Space> :simalt ~<CR>
      inoremap <M-Space> <C-O>:simalt ~<CR>
      cnoremap <M-Space> <C-C>:simalt ~<CR>
  endif

  " CTRL-F4 is Close window
  noremap <C-F4> <C-W>c
  inoremap <C-F4> <C-O><C-W>c
  cnoremap <C-F4> <C-C><C-W>c
  onoremap <C-F4> <C-C><C-W>c

else  " Assume this is Linux

  " Allow backspacing over everything in insert mode.
  set backspace=indent,eol,start

endif

"
" Color Scheme for Terminal and GUI
"
colorscheme xoria256

"
" My specific key mappings
"
let maplocalleader="\\"                     " Local leader

map <F3> :Rg -tc "\b<cword>\b"<CR>          " Search word in C files
map <S-F3> :Rg "\b<cword>\b"<CR>            " Search word in any file
map <F9> :copen<CR>                         " Open Quickfix Window
map <F10> :cclose<CR>                       " Close Quickfix Window
map <F12> :TlistToggle<CR>                  " Toggle Tag List in Left split
