install:
	ln -s ~/.gitrepos/dotfiles/.zshrc ~/.zshrc
	ln -s ~/.gitrepos/dotfiles/.vimrc ~/.vimrc
	ln -s ~/.gitrepos/dotfiles/.vim ~/.vim
	ln -s ~/.gitrepos/dotfiles/.tmux.conf ~/.tmux.conf

clean:
	rm -rf ~/.vimrc
	rm -rf ~/.vim
	rm -rf ~/.zshrc
	rm -rf ~/.tmux.conf
