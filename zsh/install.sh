ZSHRC_PATH="$HOME/.zshrc"
OH_MY_ZSH_URL= "https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh"

sudo apt install -y zsh

sh -c "$(curl -fsSL $OH_MY_ZSH_URL)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

rm -f $ZSHRC_PATH
cp ".zshrc" "$ZSHRC_PATH"
