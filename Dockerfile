#################
# 42 Valgrind Container

FROM ubuntu:focal

# Suppress an apt-key warning about standard out not being a terminal. Use in this script is safe.
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update --no-install-recommends -y && apt-get install --no-install-recommends \
    'build-essential' \
    "man-db" \
    "valgrind" \
    "gdb" \
    'automake' \
    'make' \
    'ca-certificates' \
    'g++' \
    'libtool' \
    'pkg-config' \
    'manpages-dev' \
    'zip' \
    'unzip' \
    'python3' \
    'python3-pip' \
    'git' \
    'openssh-server' \
    'dialog' \
    'llvm' \
    'clang' \
    'libbsd-dev' \
    'curl' \
    'wget' \
    'zsh' \
    'nano' \
    'vim' \
    'libreadline-dev' \
    'moreutils' \
    'ruby' \
    'htop' \
    'irssi' \
    'netcat' \
    'tcpdump' \
    -y \
    && apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/

# Install 42 Norminette
RUN python3 -m pip install --upgrade pip setuptools && python3 -m pip install norminette && mkdir -p /home/vscode/src

# Install oh-my-zsh and update user prompt
RUN sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" && echo 'PROMPT=%B%F{blue}[DOCKER]%f%b$PROMPT' >> /root/.zshrc

# Remove symlink to c++ and replace with g++
RUN rm /usr/bin/c++ && ln -s /usr/bin/g++ /usr/bin/c++

WORKDIR /home/vscode/src

ENV DEBIAN_FRONTEND=dialog
# Add Return Code in prompt for bash
ENV PROMPT_COMMAND='RET=$?; echo -n "[$RET] "'


LABEL maintainer="Dale Furneaux <opinfosec>" \
      version="2.3.0"
