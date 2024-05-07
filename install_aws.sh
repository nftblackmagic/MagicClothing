apt update
apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/workspace/awscliv2.zip"
unzip /workspace/awscliv2.zip -d /workspace/
/workspace/aws/install
rm -rf /workspace/awscliv2.zip

apt update
apt --assume-yes install -y aria2
apt-get --assume-yes install python3-pip
apt --assume-yes install vim
apt --assume-yes install nano
apt-get --assume-yes install tmux

pip install gdown
pip install --upgrade gdown
apt-get --assume-yes install unzip
apt-get --assume-yes install libsm6 libxrender1 libfontconfig1