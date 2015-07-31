sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo ln -s $PWD/scripts/i3lockscreen /usr/local/bin
sudo ln -s /usr/local/bin/{i3lockscreen,lock}

sudo cp $PWD/systemd/i3lock.service /etc/systemd/system
sudo systemctl enable i3lock.service
sudo systemctl daemon-reload

ln -s $PWD/vim/.vim ~
ln -s $PWD/vim/.vimrc ~

ln -s $PWD/git/.gitconfig ~
ln -s $PWD/git/.gitignore_global ~

mkdir -p ~/.i3
ln -s $PWD/i3/config ~/.i3
ln -s $PWD/i3/.i3status.conf ~

ln -s $PWD/dinduks.zsh ~/.oh-my-zsh/custom