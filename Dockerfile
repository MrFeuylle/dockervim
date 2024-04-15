FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm neovim ripgrep curl git
RUN mkdir -p /root/.config/nvim
RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN curl -L https://raw.githubusercontent.com/MrFeuylle/Nvimconf/main/init.vim -o /root/.config/nvim/init.vim

RUN chmod 777 /root/.config/nvim/init.vim
RUN mkdir -p /root/projet
COPY ./entrypoint.sh /root/projet/entrypoint.sh
RUN chmod 777 /root/projet/entrypoint.sh
