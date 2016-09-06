# Symlinks
ln -s vimrc ~/.vimrc
ln -s tmux.conf ~/.tmux.conf

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Must have cmake and etc... install automake gcc gcc-c++ kernel-devel cmake
# and this: install python-devel python3-devel
~/.vim/bundle/youcompleteme/install.py --tern-completer

# brew install reattach-to-user-namespace
