nvim: /usr/local/bin/nvim.appimage
/usr/local/bin/nvim.appimage: 
	@echo "installing nvim... in /usr/local/bin it might require sudo password"
	@sudo curl -fLo /usr/local/bin/nvim.appimage --create-dirs https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
	@sudo chmod 755 /usr/local/bin/nvim.appimage
	@echo "done"
plugin-manager: ~/.local/share/nvim/site/autoload/plug.vim
~/.local/share/nvim/site/autoload/plug.vim:
	@echo "Installing plugin manager..."
	@curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@echo "Done"
go-completer:
	@echo "Configuring go-completer for youcompleteme"
	@cd ~/.local/share/nvim/plugged/youcompleteme && ./install.py --go-completer && cd -
	@echo "Done"
vim-aliases:
	@echo "configuaring aliases for nvim"
	@echo "alias vim='/usr/local/bin/nvim.appimage'" >> ~/.bashrc
	@echo "alias vi='/usr/local/bin/nvim.appimage'" >> ~/.bashrc	
vimrcbk:
	@echo "Creating new vimrc with taking backup of existing one to '.vimrc_old"
	@if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc_old 2>/dev/null; fi
	@cp vimrc ~/.vimrc
install: nvim 	plugin-manager vim-aliases vimrcbk 
	@echo "Souce '~/bashrc' to take new aliases effect.Open any file using vim and in command mode run :PlugInstall"
	@echo "To install go tools which used by vim open any existing or new .go file and run :GoInstallBinaries in vim command mode"
	

