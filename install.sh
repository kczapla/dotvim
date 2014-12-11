#!/usr/bin/bash

mkdir ~/.fonts
cp ~/.vim/symbols/PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/

mkdir -p ~/.config/fontconfig/conf.d/
cp ~/.vim/symbols/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

