touch ~/install_progress_log.txt
log_file=~/install_progress_log.txt

sudo apt-get -y install git
if type -p git > /dev/null; then
    echo "git Installed" >> $log_file
else
    echo "git FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install zsh
if type -p zsh > /dev/null; then
    echo "zsh Installed" >> $log_file
else
    echo "zsh FAILED TO INSTALL!!!" >> $log_file
fi

# Install oh-my-zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# OhMyZsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# sudo apt-get install zsh-syntax-highlighting

sudo apt-get -y install curl
if type -p curl > /dev/null; then
    echo "curl Installed" >> $log_file
else
    echo "crul FAILED TO INSTALL!!!" >> $log_file
fi

# ---
# Install git-completion and git-prompt
# ---
# cd ~/
# curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
# mv ~/git-completion.bash ~/.git-completion.bash
# curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
# echo "git-completion and git-prompt Installed and Configured" >> $log_file


echo -e "\n====== Summary ======\n"
cat $log_file
rm $log_file
