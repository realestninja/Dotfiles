echo ''
echo 'Reinstall custom vim?'
read do_vim

if [ ~/temp ]; then
	if [[ $do_vim == y* ]]; then
		cd ~/temp/
		rm -rf vim
		git clone --depth 1 https://github.com/vim/vim.git
		cd vim
		echo "--------------------"
		ls /usr/lib/ | grep -E '\bpython'
		echo "Latest Python Version? (Example: 3.9)"
		read pyth_version
		echo "--------------------"
		ls /usr/lib/python$pyth_version | grep -E '\bconfig'
		echo "Config version? (Example: 3.9 or 3.6m)"
		read pyth_config_version
		echo "--------------------"
		awk 'FNR <= 1' README.txt
		echo "vim version? (Example: 82)"
		read vim_version
		echo "--------------------"
		echo "Building vim..."
		./configure --with-features=huge \
			      --enable-multibyte \
			      --enable-rubyinterp=yes \
			      --enable-pythoninterp=yes \
			      --enable-python3interp=yes \
			      --with-python3-config-dir=/usr/lib/python$pyth_version/config-$pyth_config_version-x86_64-linux-gnu \
			      --enable-perlinterp=yes \
			      --enable-luainterp=yes \
			      --enable-gui=gtk2 --enable-cscope --prefix=/usr
		make VIMRUNTIMEDIR=/usr/share/vim/vim$vim_version
		sudo make install
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	fi
fi
