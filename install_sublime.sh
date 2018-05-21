sudo add-apt-repository ppa:webupd8team/sublime-text-3;
sudo apt-get update;
sudo apt-get install -y sublime-text-installer;
sudo ln -s /usr/lib/sublime-text-3/sublime_text /usr/local/bin/sublime;
echo "export EDITOR='subl -w'" >> ~/.bashrc
source ~/.bashrc
