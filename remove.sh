sed -i "/alias nvi='docker run -it -v \$PWD:\/root\/projet myimgnvim \/root\/entrypoint.sh'/d" ~/.zshrc
sed -i "/alias eoc='\/tmp\/dockervim\/remove.sh'/d" ~/.zshrc
docker image rm -f myimgnvim 
docker system prune -f
rm -rf /tmp/dockervim
