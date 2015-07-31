sudo aptitude -y install i3 i3lock xautolock vim zsh scrot imagemagick htop curl wget

sudo curl https://raw.githubusercontent.com/Dinduks/change-execute-loop/master/cel -o /usr/local/bin/cel

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

SCRIPTS=scripts/*
for script in $SCRIPTS; do
  echo sudo ln -s $PWD/$script /usr/local/bin
done

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
