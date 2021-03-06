echo "Install start..."

sudo apt -qq update
echo "✔ apt update done!"

sudo apt -qq install zsh
echo "✔ zsh is installed"

ln -sf $(pwd)/bashrc ~/.bashrc
echo "✔ zsh as default shell"

# install oh-my-zsh
[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
[ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] || git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
[ -d ~/.oh-my-zsh/custom/plugins/zsh-completions ] || git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
echo "✔ oh-my-zsh is installed"

# synlink oh-my-zsh theme
mkdir -p ~/.oh-my-zsh && mkdir -p ~/.oh-my-zsh/themes
# ln -sf $(pwd)/oh-my-zsh/themes/lambda_robbyrussell.zsh-theme ~/.oh-my-zsh/themes/lambda_robbyrussell.zsh-theme
mkdir -p ~/.oh-my-zsh && mkdir -p ~/.oh-my-zsh/custom && mkdir -p ~/.oh-my-zsh/custom/plugins
mkdir -p ~/.oh-my-zsh/custom/plugins/incr
cp $(pwd)/oh-my-zsh/custom/plugins/incr/incr-0.2.zsh ~/.oh-my-zsh/custom/plugins/incr/incr-0.2.zsh
echo "✔ oh my zsh configured!"

ln -sf $(pwd)/zshrc ~/.zshrc
echo "✔ .zshrc symlinked"

ln -sf $(pwd)/gitconfig ~/.gitconfig
echo "✔ .gitconfig symlinked"

mkdir -p ~/.bin
# ln -sf /mnt/c/Program\ Files/Microsoft\ VS\ Code/code.exe ~/.bin/code
echo "✔ alias for windows programs"

mkdir -p ~/.scripts
ln -sf $(pwd)/scripts ~/.scripts
echo "✔ scripts symlinked"

mkdir -p ~/.tools
ln -sf /mnt/c/ProgramData/chocolatey/lib/gradle/tools/gradle-4.7 ~/.tools/gradle
echo "✔ gradle symlinked"

rm -f ~/c
ln -sf /mnt/c ~/c
rm -f ~/downloads
ln -sf /mnt/c/Users/woody.lee/Downloads ~/downloads
rm -f ~/workspace
ln -sf /mnt/c/Users/woody.lee/Workspace ~/workspace
rm -f ~/lab
ln -sf /mnt/c/Users/woody.lee/Lab ~/lab
rm -f ~/tools
ln -sf /mnt/c/DevTools ~/tools
rm -f ~/.aws
ln -sf /mnt/c/Users/woody.lee/.aws ~/.aws
rm -f ~/.m2
ln -sf /mnt/c/Users/woody.lee/.m2 ~/.m2
rm -f ~/.gradle
ln -sf /mnt/c/Users/woody.lee/.gradle ~/.gradle
rm -f ~/.kube
ln -sf /mnt/c/Users/woody.lee/.kube ~/.kube
echo "✔ alias for windows folders"
