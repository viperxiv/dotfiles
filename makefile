install:
	ln -s $(CURDIR)/.zshrc ~/.zshrc
	ln -s $(CURDIR)/.vimrc ~/.vimrc
	ln -s $(CURDIR)/.vim ~/.vim
	ln -s $(CURDIR)/.tmux.conf ~/.tmux.conf

clean:
	rm -rf ~/.vimrc
	rm -rf ~/.vim
	rm -rf ~/.zshrc
	rm -rf ~/.tmux.conf
