# dotfiles-win

My Ubuntu on Windows configuration files. (Inspired by https://github.com/jieverson/dotfiles-win)

## usage

Just run install.sh

```bash
git clone https://github.com/woodylic/dotfiles-win.git ~/.dotfiles
sudo ~/.dotfiles/install.sh
```

## install

### docker client

```bash
curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz
  && mv docker-18.03.1-ce.tgz docker.tgz
  && tar xzvf docker.tgz
  && mv docker/docker /usr/local/bin
  && rm -r docker docker.tgz
```

### oracle JDK

```bash
# Add the repository
sudo add-apt-repository ppa:webupd8team/java
sudo apt update

# Install
sudo apt install oracle-java8-installer
sudo apt install oracle-java8-set-default
```

### pip

```bash
sudo apt install python3-pip
```

### node.js

```bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt -qq install nodejs
sudo apt -qq install npm
```
