FROM fedora:latest

ENV TEST_NAME="test_install_deps"
ENV PS1="\[\e[38;5;196m\]$TEST_NAME\[\e[0m\] $ "

ADD . /home/test
WORKDIR /home/test

CMD ["/home/test/bin/fedora_install"]
