FROM gitpod/workspace-full:latest

USER root

RUN apt-get update                                                                                        \
    && apt-get install -y dbus   gcc g++   libdbus-1-dev libboost-dev     \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

## note not installing libreadline

USER gitpod
  
RUN mkdir -p /home/gitpod/logs                                                                            \ 
    && touch /home/gitpod/logs/myDockerlog.txt                                                            \
    && echo "Installation start, made some folders in /home/gitpod" >> /home/gitpod/logs/myDockerlog.txt  \
    && echo "Installation end"                                      >> /home/gitpod/logs/myDockerlog.txt  
   

# Give back control
USER root


# Cleaning
RUN apt-get clean


