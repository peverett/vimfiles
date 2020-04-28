# My VIMRC and GVIMRC files

There are many like them, but these ones are mine!

## VIM - The one editor to rule them all!

Download it from here: http://www.vim.org/

## HACK - a superior font for code editing
Hack is a very nice fixed width font just for coding. Download an install it first.
* Hack font: https://github.com/source-foundry/Hack

## Configuration

1. VIM looks in various places for the ```vimrc``` and ```gvimrc``` files. Use 
```:version``` to see where.
2. On Windows, it's worthwhile explicitely defining HOME as an Environment 
Variable.
3. Navigate to your home directory (~).
4. Create a subdirectory for your vim config files
    * ```\vimfiles``` - on Windows
    * ```/.vim``` - on Linux
5. Clone this repo there, and all the submodules.

The following example is for Windows shell:
```
C:\Users\Name
> mkdir vimfiles

C:\Users\Name
> git clone https://github.com/peverett/vimfiles .\vimfiles
```


## Plugins 

I am using the VIM 8.x native package manager, and so the plugins I use
are now submodules to this repo.

My package manager directories are
```
~/vimfiles/pack/pev/start
~/vimfiles/pack/pev/opt
```

To add a plugin from github (using vim-startify as an example):
```
cd ~/vimfiles
git submodule add https://github.com/mhinz/vim-startify.git ./pack/pev/start/vim-startify
git add .gitmodules ./pack/pev/start/vim_startify
git commit -m "Added submodule mhinz/vim-startify.git"
```

To update the submodule packages
```
cd ~/vimfiles
git submodule update --remote --merge
git commit -m "Updating submodules."
```

To remove a plugin
```
cd ~/vimfiles
git submodule deinit ./pack/pev/start/vim-startify
git rm ./pack/pev/start/vim-startify
git commit -m "Removed submodule mhinz/vim-startify.git"
```

Plugins I use
* Xoria256 - my favorite color scheme: https://github.com/vim-scripts/xoria256.vim
* Silk Toolbar Icons (nicer): https://github.com/istepura/vim-toolbar-icons-silk
* Splash screen for vim: https://github.com/mhinz/vim-startify 
* Cooler Status line: https://github.com/vim-airline/vim-airline
* With funkier colours: https://github.com/vim-airline/vim-airline-themes

For full VIM power mad crazyness install
* CTags: http://ctags.sourceforge.net/
* cscope - win32 build: https://code.google.com/archive/p/cscope-win32/downloads
* taglist - https://github.com/vim-scripts/taglist.vim

