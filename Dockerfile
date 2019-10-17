FROM debian:buster
MAINTAINER abdul@quadlobe.com
WORKDIR /sandbox

ADD https://raw.githubusercontent.com/ayinlaaji/dotfile/master/init.vim /root/.config/nvim/init.vim
ADD https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim /root/.local/share/nvim/site/autoload/plug.vim
ADD https://github.com/bazelbuild/bazel/releases/download/0.27.0/bazel-0.27.0-installer-linux-x86_64.sh /opt/bazel-0.27.0-installer-linux-x86_64.sh
ADD https://deb.nodesource.com/setup_12.x /opt/nodejs_setup_12.x
ADD https://yarnpkg.com/install.sh /opt/yarn_installer.sh 
RUN apt-get update
RUN apt-get install -y build-essential protobuf-compiler \
		pkg-config zip zlib1g-dev unzip python git golang \
		python3 python3-dev python-pip python3-pip \
		curl screen neovim python-neovim python3-neovim
RUN git clone https://github.com/ayinlaaji/ultisnips.git /.vim/UltiSnips
RUN bash /opt/nodejs_setup_12.x && apt-get install -y nodejs && bash /opt/yarn_installer.sh
RUN npm install -g trash-cli prettier typescript
RUN chmod +x /opt/bazel-0.27.0-installer-linux-x86_64.sh && bash /opt/bazel-0.27.0-installer-linux-x86_64.sh