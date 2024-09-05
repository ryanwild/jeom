FROM fedora:latest

ENV PS1="\[\e[38;5;196m\]test_dot_files\[\e[0m\] $ "

ENV HOME="/home/test/tests/install_dotfiles/stub"
ADD . /home/test

# font files are too noisy for test output
RUN rm -rf /home/test/dotfiles/.local/share/fonts

COPY <<EOF /home/test/test_install
#!/bin/bash

echo "running install_dotfiles test..."

/bin/bash ./bin/dotfiles_install

echo "___________results___________"
ls -laR "$HOME/"
source "$HOME/.bashrc"
echo "_____________done____________"
EOF

WORKDIR /home/test
CMD ["bash", "/home/test/test_install"]
