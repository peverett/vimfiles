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
5. Clone this repo and the Vundle Plugin there.
6. Run vim the first time to install all the plugins.

The following example is for Windows shell:
```
C:\Users\Name
> mkdir vimfiles

C:\Users\Name
> git clone https://github.com/peverett/vimfiles .\vimfiles

C:\Users\Name
> git clone https://github.com/VundleVim/Vundle.vim.git .\vimfiles\bundle\Vundle.vim 

C:\Users\Name
> vim +PluginInstall +qall
```

## Windows Specific Settings
The example Vundle setup for the plugin, on github, is for Linux and uses the 
```~/.vim``` directory . For MS Windows, change the ```vimrc``` 
setup to invoke Vundle as follows:
```

set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle')

```

## Plugins & Tools

Obviously, the Vundle Plugin is primary - https://github.com/VundleVim/Vundle.Vim

Other plugins I use are:
* CTRLp.vim - fuzzy file finder and buffer navigation: https://kien.github.io/ctrlp.vim/
* Xoria256 - my favorite color scheme: https://github.com/vim-scripts/xoria256.vim
* ifdef-highlighting - useful for C: https://github.com/vim-scripts/ifdef-highlighting
* Silk Toolbar Icons (nicer): https://github.com/istepura/vim-toolbar-icons-silk


For full VIM power mad crazyness install
* CTags: http://ctags.sourceforge.net/
* cscope - win32 build: https://code.google.com/archive/p/cscope-win32/downloads

