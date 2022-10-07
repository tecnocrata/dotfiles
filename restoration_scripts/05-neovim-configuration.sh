cd ~/
cd .config
echo '' > .vimrc
echo 'set number' >> .vimrc
echo 'set mouse=a' >> .vimrc
echo 'set numberwidth=1' >> .vimrc
echo 'set clipboard=unnamed' >> .vimrc
echo 'syntax enable' >> .vimrc
echo 'set showcmd' >> .vimrc
echo 'set ruler' >> .vimrc
echo 'set encoding=utf-8' >> .vimrc
echo 'set showmatch' >> .vimrc
echo 'set sw=2' >> .vimrc
echo 'set relativenumber' >> .vimrc
echo 'set laststatus=2' >> .vimrc
ln -s ~/.config/.vimrc ~/.vimrc

mkdir nvim
cd nvim
echo '' > init.vim
echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after' >> init.vim
echo 'let &packpath=&runtimepath' >> init.vim
echo 'source ~/.vimrc' >> init.vim
cd ~/