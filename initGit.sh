initGit.sh

#remove colors from vim 
echo ":syntax off" > $HOME/.vimrc

git config --global user.email "bob.aiello@ieee.org"
git config --global user.name "Bob Aiello"

git config --list
