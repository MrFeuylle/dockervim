#!/bin/bash
git clone git@github.com:MrFeuylle/dockervim.git /tmp/dockervim
cd /tmp/dockervim
docker build -t myimgnvim .
cat <<'EOF' >> ~/.zshrc
alias nvi='docker run -it -v $PWD:/root/projet myimgnvim /root/entrypoint.sh'
alias eoc='docker image rm -f 6f1a0bab707e && docker system prune -f'
EOF
