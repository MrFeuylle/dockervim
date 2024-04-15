docker build -t myimgnvim .
docker run -it -v $PWD:/root/projet myimgnvim ./entrypoint.sh