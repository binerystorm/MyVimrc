# My Vimrc

## Description
This is my vimrc. There are some things to take into acount before you start using it (if you want to use it).
  1. I use a vim undo directory that directory is set to `~/.vim/undo`, this directory must be created on your system or vim will give you an error. If you would like to change the location of this directory search the vimrc for `set undodir` and you will find the setting you must set.
  1. The other thing is I have a couple self made vim plugins that are not worth putting on github, I store these in `~/scripts/vimplugins` if you dont have this directory vim will tell you however, if you add this directory you will still not have the plugins. So I would recomend removing all the plugins I added in  vimrc and adding your own. (I might change this in future)
  1. I also use vim-plug for my plugin manager so if you prefer a different plugin manager you will have to change the vimrc as well as the install instructions accordingly

Okey now that that is out of the way, my vimrc is relitivly simple with very few plugins and bindings, it is probably a good starting point if you are really new. (although some plugins are quite advanced)

## Install
I use [vim-plug](https://github.com/junegunn/vim-plug) (click the link to read more about it, its an excelent plugin manager), so you will have to install that to. But just clone this repo into your `.vim` directory, whether that be in your ~/.config or your home directory and install vim-plug, on windows it is abit more complex.<br>
Linux:<br>
``` shell
$ cd ~/.vimrc
$ git clone https://github.com/binerystorm/MyVimrc .
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
```
or<br>
``` shell
$ cd ~/.config/.vim
$ git clone https://github.com/binerystorm/MyVimrc .
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
```
(The last command is for install vim-plug fyi)

Windows:<br>
Vim in windows doesn't have the same structure as vim in linux so its all abit more finicky. Download the repo, put the vimrc file in your home directory and rename it to `_vimrc`. then you must install [vim-plug](https://github.com/junegunn/vim-plug), I would check out their github to see how to install it on windows. And that should be it. (vim-plug doesn't work without git, this might be a problem on windows.)

