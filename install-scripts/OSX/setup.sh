#==============
# Install packages
#==============
sudo chown -R $(whoami):admin /usr/local
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# So we use all of the packages we are about to install
echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.bashrc
source ~/.bashrc

# Install zsh
brew install zsh

#==============
# Remove old dot flies
#==============
sudo rm -rf ~/.zsh_prompt > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
SYMLINKS=()
SYMLINKS+=('.zsh_prompt')
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
SYMLINKS+=('.zshrc')
ln -s ~/dotfiles/gitconfig ~/.gitconfig
SYMLINKS+=('.gitconfig')

echo ${SYMLINKS[@]}

cd ~
# Dump all currently installed software via Homebrew into Brewfile
brew bundle
cd -

#==============
# Set zsh as the default shell
#==============
# sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)

echo -e "\n====== Finished!! ======\n"
