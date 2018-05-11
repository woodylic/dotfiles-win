echo "Install start..."

git pull
echo "✔ dotfiles are up to date"

sudo apt -qq update
echo "✔ apt update done!"

sudo apt -qq install zsh
echo "✔ zsh is installed"

ln -sf $(pwd)/bashrc ~/.bashrc
echo "✔ zsh as default shell"

# install oh-my-zsh
[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "✔ oh-my-zsh is installed"

# synlink oh-my-zsh theme
mkdir -p ~/.oh-my-zsh && mkdir -p ~/.oh-my-zsh/themes
# ln -sf $(pwd)/oh-my-zsh/themes/lambda_robbyrussell.zsh-theme ~/.oh-my-zsh/themes/lambda_robbyrussell.zsh-theme
# ln -sf $(pwd)/oh-my-zsh/themes/emoji_robbyrussell.zsh-theme ~/.oh-my-zsh/themes/emoji_robbyrussell.zsh-theme
echo "✔ oh my zsh configured!"

ln -sf $(pwd)/zshrc ~/.zshrc
echo "✔ .zshrc symlinked"

ln -sf $(pwd)/gitconfig ~/.gitconfig
echo "✔ .gitconfig symlinked"

mkdir -p ~/.bin
ln -sf /mnt/c/Program\ Files/Microsoft\ VS\ Code/code.exe ~/.bin/code
echo "✔ alias for windows programs"

mkdir -p ~/.scripts
ln -sf $(pwd)/scripts ~/.scripts

rm -f ~/c
ln -sf /mnt/c ~/c
rm -f ~/downloads
ln -sf /mnt/c/Users/woody.lee/Downloads ~/downloads
rm -f ~/workspace
ln -sf /mnt/c/Users/woody.lee/Workspace ~/workspace
rm -f ~/lab
ln -sf /mnt/c/Users/woody.lee/Lab ~/lab
rm -f ~/.aws
ln -sf /mnt/c/Users/woody.lee/.aws ~/.aws
rm -f ~/.ssh
ln -sf /mnt/c/Users/woody.lee/.ssh ~/.ssh
rm -f ~/.m2
ln -sf /mnt/c/Users/woody.lee/.ssh ~/.m2
echo "✔ alias for windows folders"

# curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
# sudo apt -qq install nodejs
# sudo apt -qq install npm
# sudo apt -qq install python3-pip
# echo "✔ apt dev tools installed"

# sudo apt -qq install caca-utils ranger cowsay fortune screenfetch lolcat figlet sl cmatrix
# echo "✔ other cool stuff installed"

