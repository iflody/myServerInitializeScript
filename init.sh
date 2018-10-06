# Use the alibaba ubuntu 16.04 source list

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp sources.list /etc/apt/sources.list

# update the software source, install some softwares
sudo apt update
sudo apt install -y python python3 zsh gcc g++ gdb vim proxychains
sudo apt install -y python-pip python3-pip
sudo apt install -y ctags build-essential cmake silversearcher-ag 

# change the pip source to tsinghua source
mkdir ~/.pip/
cp pip.conf ~/.pip/pip.conf

python -m pip install requests virtualenv

# install peda

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

# install oh my zsh



