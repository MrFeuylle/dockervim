FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm neovim ripgrep curl git
RUN mkdir -p /root/.config/nvim
RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN curl -L https://raw.githubusercontent.com/MrFeuylle/Nvimconf/main/init.vim -o /root/.config/nvim/init.vim

RUN chmod 777 /root/.config/nvim/init.vim
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod 777 entrypoint.sh
CMD ["./entrypoint.sh"]
