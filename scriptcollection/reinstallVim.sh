echo ''
echo 'Reinstall custom vim?'
read do_vim

if [ ~/temp ]; then
	if [[ $do_vim == y* ]]; then
		cd ~/temp/
		git clone --depth 1 https://github.com/vim/vim.git
		cd vim
		./configure --with-features=huge \
			      --enable-multibyte \
			      --enable-rubyinterp=yes \
			      --enable-pythoninterp=yes \
			      --enable-python3interp=yes \
			      --with-python3-config-dir=/usr/lib/python3.5/config-3.6m-x86_64-linux-gnu \
			      --enable-perlinterp=yes \
			      --enable-luainterp=yes \
			      --enable-gui=gtk2 --enable-cscope --prefix=/usr
		make VIMRUNTIMEDIR=/usr/share/vim/vim81
		sudo make install
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	fi
fi
