# Symlinks
ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/tmux.conf ~/.tmux.conf

# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# vim +PluginInstall +qall

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

# Must have cmake and etc... install automake gcc gcc-c++ kernel-devel cmake
# and this: install python-devel python3-devel
# ~/.vim/bundle/youcompleteme/install.py --tern-completer

npm install --prefix ~/.vim/plugged/tern_for_vim/

npm install -g eslint eslint_d eslint-plugin-flowtype babel-eslint eslint-plugin-react eslint-plugin-import eslint-plugin-jsx-a11y@2 eslint-config-airbnb
eslint_d restart

# brew install tmux
# brew install the_silver_searcher
# brew install ack
# brew tap caskroom/fonts
# brew cask install font-hack-nerd-font
# brew install reattach-to-user-namespace
# brew install ripgrep

# CentOS
# sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
# sudo yum install ripgrep

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
# ADD THIS TO .zshrc
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
