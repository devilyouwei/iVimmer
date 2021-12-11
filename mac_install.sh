echo "install wget"
brew install wget

echo "installl neovim:"
brew install neovim

echo "########For Node and JS:"
brew install node
brew install npm
npm install -g neovim

echo "########For Ruby:"
brew install ruby
sudo gem install neovim

echo "########For Perl:"
brew install perl
brew install cpanminus
cpanm Neovim::Ext

echo "########For Python:"
brew install python3
pip3 install neovim

echo "########For Clangs"
brew install gcc
brew install ctags
brew install astyle
brew install clang-format
brew install llvm
brew install ccls

echo "########For Shell"
brew install shfmt
brew install lazygit

echo "########For Java"
brew install java

echo "Install vim-plug------------------------------------------"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ "$?" != 0 ]; then
    red "Network Error: curl fail to download 'plug.vim'"
    exit 1
fi
echo "----------------------------------------------------------"
echo ""
sleep 1

wget -P ~/Library/Fonts/ https://github.com/devilyouwei/linux-font/raw/master/Monaco/Nerd/YaheiMonacoNerd.ttf
wget -P ~/.config/nvim/ https://raw.githubusercontent.com/devilyouwei/iVimmer/master/coc-settings.json
wget -P ~/.config/nvim/ https://raw.githubusercontent.com/devilyouwei/iVimmer/master/init.vim

echo "########Nvim PlugInstall:"
nvim -c PlugInstall -c q -c q

echo 'alias vim="nvim"' >>~/.zshrc
echo 'alias vi="nvim"' >>~/.zshrc
