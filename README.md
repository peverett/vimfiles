# My VIMRC and GVIMRC files

There are many like them, but these ones are mine!

## VIM - The one editor to rule them all!

Download it from here: http://www.vim.org/

## Configuration

1. VIM looks in various places for the VIMRC and GVIMRC files. ':version' to see
   where.
2. On windows it's worthwhile explicitely defining a HOME environment var.
3. Navigate to your home directory (~).
4. Create a subdirectory for your vim config files
..* \vimfiles - on Windows
..* /.vim - on Linux
5. Clone this repo there and you're halfway home. 

```
> git clone https://github.com/peverett/vimfiles 
```

## Plugins & Tools

Install the Vundle Plugin - https://github.com/VundleVim/Vundle.Vim

The VIMRC then contains the plugins that I want, and keeps them up to date.

So far...
* CTRLp.vim - fuzzy file finder and buffer navigation: https://kien.github.io/ctrlp.vim/
* Xoria256 - my favorite color scheme: https://github.com/vim-scripts/xoria256.vim
* ifdef-highlighting - useful for C: https://github.com/vim-scripts/ifdef-highlighting
* Todo.txt (todotxt.com) list pluging: https://github.com/freitass/todo.txt-vim

For full VIM power mad crazyness install
* CTags: http://ctags.sourceforge.net/
* cscope - win32 build: https://code.google.com/archive/p/cscope-win32/downloads

To get some decent toolbar icons on Windows, it's worth replacing the bitmaps 
with these:
* https://github.com/istepura/vim-toolbar-icons-silk

