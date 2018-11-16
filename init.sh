# Use the alibaba ubuntu 16.04 source list
sudo sh -c 'echo Defaults env_keep += \"http_proxy https_proxy\" >> /etc/sudoers'
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp sources.list /etc/apt/sources.list

# update the software source, install some softwares
sudo apt update
sudo apt install -y python python3 zsh gcc g++ gdb vim proxychains ruby
sudo apt install -y python-pip python3-pip curl wget tmux
sudo apt install -y ctags build-essential cmake silversearcher-ag python-dev git libssl-dev libffi-dev

# change the pip source to tsinghua source
mkdir ~/.pip/
cp pip.conf ~/.pip/pip.conf

# upgrade pip

sudo python -m pip install --upgrade pip
sudo python3 -m pip install --upgrade pip

sudo python -m pip install requests virtualenv pwntools

# install peda

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

# configure the vim

cd ~ && git clone https://github.com/iflody/k-vim.git

sudo python -m pip install flake8 yapf

cd k-vim/

sh -x install.sh

# one gadget

sudo gem install one_gadget

sudo chsh -s /usr/bin/zsh root

# install oh my zsh

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"