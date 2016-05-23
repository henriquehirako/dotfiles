ln -s vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Must have cmake and etc... install automake gcc gcc-c++ kernel-devel cmake
# and this: install python-devel python3-devel
/home/hirako/.vim/bundle/youcompleteme/install.py --tern-completer
