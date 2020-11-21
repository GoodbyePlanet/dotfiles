#==============
# Install all the packages
#==============
sudo chown -R $(whoami):admin /usr/local
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# So we use all of the packages we are about to install
echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.bashrc
source ~/.bashrc

#==============
# Remove old dot flies
#==============
sudo rm -rf ~/.zsh_prompt > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
# sudo rm -rf ~/.gitconfig > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
SYMLINKS=()
SYMLINKS+=('.zsh_prompt')
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
SYMLINKS+=('.zshrc')
# ln -sf ~/dotfiles/config ~/.config
# SYMLINKS+=('.config')
# ln -sf ~/dotfiles/custom-configs/custom-snips ~/.vim/custom-snips
# SYMLINKS+=('.vim/custom-snips')


# if [ -n "$(find ~/dotfiles/custom-configs -name gitconfig)" ]; then
#     ln -s ~/dotfiles/custom-configs/**/gitconfig ~/.gitconfig
# else
#     ln -s ~/dotfiles/gitconfig ~/.gitconfig
# fi
# SYMLINKS+=('.gitconfig')

# if [ -n "$(find ~/dotfiles/custom-configs -name tmux.conf)" ]; then
#     ln -s ~/dotfiles/custom-configs/**/tmux.conf ~/.tmux.conf
# else
#     ln -s ~/dotfiles/mac-tmux/tmux.conf ~/.tmux.conf
# fi

echo ${SYMLINKS[@]}

cd ~
brew bundle
cd -

#==============
# Set zsh as the default shell
#==============
# chsh -s /bin/zsh

#==============
# And we are done
#==============
echo -e "\n====== All Done!! ======\n"
