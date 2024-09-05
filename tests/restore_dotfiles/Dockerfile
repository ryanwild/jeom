FROM fedora:latest

ENV PS1="\[\e[38;5;196m\]test_restore_dot_files\[\e[0m\] $ "

ENV HOME="/home/test/tests/restore_dotfiles/stub"
ADD . /home/test

# font files are too noisy for test output
RUN rm -rf /home/test/dotfiles/.local/share/fonts

COPY <<EOF /home/test/test_restore
#!/bin/bash

echo "running restore_dotfiles test..."

/bin/bash ./bin/dotfiles_install

echo "testing restore after install"

/bin/bash ./bin/dotfiles_restore

echo "___________results___________"
ls -laR "$HOME/"
echo "_____________done____________"
EOF

WORKDIR /home/test
CMD ["bash", "/home/test/test_restore"]
