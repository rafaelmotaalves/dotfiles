ZSHRC_PATH="$HOME/.zshrc"
OH_MY_ZSH_URL="https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh"

sudo apt install -y zsh

sh -c "$(curl -fsSL $OH_MY_ZSH_URL)"


SUGGESTIONS_PLUGIN_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
rm -rf $SUGGESTIONS_PLUGIN_PATH

git clone https://github.com/zsh-users/zsh-autosuggestions $SUGGESTIONS_PLUGIN_PATH
rm -f $ZSHRC_PATH
cp ".zshrc" "$ZSHRC_PATH"
