sudo apt update -y
sudo apt install neovim -y
ls -la

mkdir .config
cd .config
mkdir nvim
cd nvim
nvim init.vim

sudo apt install curl -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo apt install python3-pip -y
sudo pip3 install pywal
wal --theme base16-nord

sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev -y
