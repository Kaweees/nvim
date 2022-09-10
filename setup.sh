sudo apt update -y
sudo apt install neovim -y
ls -la

mkdir .config
cd .config
mkdir nvim
cd nvim
nvim init.vim

sudo apt install curl -y
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apt install python3-pip -y
sudo pip3 install pywal
wal --theme base16-nord

# bspwm (window manager)
sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev -y

# Zathura (document viewer)
sudo apt-get install -y zathura

# girara (Zathura core dependency)
# GTK+ (Zathura core dependency)
