sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo ln -s $PWD/scripts/i3lockscreen /usr/local/bin

sudo ln -s $PWD/systemd/i3lock.service /etc/systemd/system
sudo systemctl enable i3lock.service

ln -s $PWD/.vim ~
ln -s $PWD/.vimrc ~

ln -s $PWD/.gitconfig ~
ln -s $PWD/.gitignore_global ~

mkdir -p ~/.i3
ln -s $PWD/i3/config ~/.i3
ln -s $PWD/i3/.i3status.conf ~

ln -s $PWD/dinduks.zsh ~/.oh-my-zsh/custom
