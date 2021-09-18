# vim dotfiles

my vimrc

## about
* ```<C-j> is <esc>```
* ```<Space>a is highlight```
* ```<C-j><C-j> is no highlight```
* ```<Space>i is code format```
* ```<Shift-p><Shift-p> is paste("0p)```
* ```<C-k> is comment out```

## install
setup NeoBundle
```console
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

setup NeoBundoe for comment out
```console
git clone https://github.com/tyru/caw.vim.git ~/.vim/bundle/caw.vim
```

this sh create symbolic link
```console
sh dotfilesLink.sh
```
