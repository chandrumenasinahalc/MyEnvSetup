nvim:
	@if ! test `which nvim`; then \
		echo "Neovim with version >= 'v0.4.3' required!!!";\
		echo "Use : sudo apt-get install neovim"; \
		exit ; \
	fi
vim-aliases:
	@echo "configuaring aliases for nvim"
	@echo "alias vim='`which nvim`'" >> ~/.bashrc
	@echo "alias vi='`which nvim`'" >> ~/.bashrc	
	@source ~/.bashrc
vimrcbk:
	@mkdir -p ~/.config/nvim/
	@rm -rf ~/.config/nvim/init.vim
	@cp vimrc ~/.config/nvim/init.vim
install: nvim vim-aliases vimrcbk 
	@echo "Configuring Plugins"
	@vi -c :PlugInstall
	@vi -c :GoInstallBinaries /tmp/test.go
	

