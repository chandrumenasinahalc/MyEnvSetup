install:
       @echo "installing nvim..."
       curl -fLO /usr/local/bin/nvim.appimage --create-dirs https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
       chmod u+x /usr/bin/nvim.appimage
       @echo "done"
       @echo "Installing plugin manager..."
       curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
       @echo "Done"
       @echo "Configuring go-completer for youcompleteme"
       cd ~/.local/share/nvim/plugged/youcompleteme && ./install.py --go-completer && cd -
       @echo "Done"
       @echo "configuaring aliases for nvim"
       @echo "alias vim='/usr/bin/nvim.appimage'" >> ~/.bashrc
       @echo "alias vi='/usr/bin/nvim.appimage'" >> ~/.bashrc
       @echo "Creating new vimrc with taking backup of existing one to '.vimrc_old"
       @mv ~/.vimrc ~/.vimrc_old
       @cp .vimrc ~/

