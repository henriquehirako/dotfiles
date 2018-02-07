# Symlinks
ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/tmux.conf ~/.tmux.conf

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Must have cmake and etc... install automake gcc gcc-c++ kernel-devel cmake
# and this: install python-devel python3-devel
~/.vim/bundle/youcompleteme/install.py --tern-completer

# npm install -g eslint eslint_d eslint-plugin-flowtype babel-eslint eslint-plugin-react eslint-plugin-import eslint-plugin-jsx-a11y@2 eslint-config-airbnb
# eslint_d restart

# brew install reattach-to-user-namespace
