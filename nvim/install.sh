sudo apt install neovim -y

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

rm -rf $HOME/.config/nvim
mkdir $HOME/.config/nvim -p

cp "init.vim" "$HOME/.config/nvim/"

COC_PATH="$HOME/.config/coc/"

nvim +PlugInstall +qall

cd $COC_PATH

npm install coc-tsserver coc-python --save
