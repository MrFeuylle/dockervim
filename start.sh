git clone git@github.com:MrFeuylle/dockervim.git
cd dockervim
docker build -t myimgnvim .
docker run -it -v $PWD:/root/projet myimgnvim ./entrypoint.sh