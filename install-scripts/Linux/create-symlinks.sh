#!/bin/zsh
#===============================================================================
#
#             NOTES: For this to work you must have cloned the github
#                    repo to your home folder as ~/dotfiles/
#
#===============================================================================

#==============
# Variables
#==============
touch ~/install_progress_log.txt
dotfiles_dir=~/dotfiles
log_file=~/install_progress_log.txt

#==============
# Delete existing dot files and folders
#==============
sudo rm -rf ~/.zsh_prompt > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
# sudo rm -rf ~/.gitconfig > /dev/null 2>&1


#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
ln -sf $dotfiles_dir/zsh/zshrc ~/.zshrc
# ln -sf $dotfiles_dir/config ~/.config
# ln -sf $dotfiles_dir/custom-configs/custom-snips ~/.vim/custom-snips

# if [ -n "$(find $dotfiles_dir/custom-configs -name gitconfig)" ]; then
#     ln -s $dotfiles_dir/custom-configs/**/gitconfig ~/.gitconfig
# else
#     ln -s $dotfiles_dir/gitconfig ~/.gitconfig
# fi

# if [ -n "$(find $dotfiles_dir/custom-configs -name tmux.conf)" ]; then
#     ln -s $dotfiles_dir/custom-configs/**/tmux.conf ~/.tmux.conf
# else
#     ln -s $dotfiles_dir/linux-tmux/tmux.conf ~/.tmux.conf
# fi


#==============
# Set zsh as the default shell
#==============
# sudo chsh -s /bin/zsh

echo -e "\n====== Summary ======\n"
cat $log_file
rm $log_file
