nvim:
	@if ! test `which nvim`; then \
		echo "Neovim with version >= 'v0.4.3' required!!!";\
		echo "Use : sudo snap install nvim --classic"; \
		exit ; \
	fi
vim-aliases:
	@echo "configuaring aliases for nvim"
	@echo "alias vim='`which nvim`'" >> ~/.bashrc
	@echo "alias vi='`which nvim`'" >> ~/.bashrc	
	@. ~/.bashrc
config:
	@mkdir -p ~/.config/nvim/
	@cp -r nvim/* ~/.config/nvim/
install: nvim vim-aliases config
	@echo "Configuring Plugins"
	@vi -c :GoInstallBinaries /tmp/test.go
	@vi -c ":CocInstall coc-jedi coc-go coc-yaml coc-yaml coc-explorer coc-fzf-previrew coc-snippets coc-sh coc-pair" 
