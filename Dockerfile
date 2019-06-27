FROM gitpod/workspace-full:latest

USER root

RUN apt-get update                                                                                                                \
    && apt-get install -y dbus gcc g++ automake libtool lsb-release make  clang-format-6.0                                        \
                          libdbus-1-dev libboost-dev libreadline-dev autoconf autoconf-archive  software-properties-common        \
    && apt-get update && add-apt-repository -y ppa:team-gcc-arm-embedded/ppa                                                      \
    && apt-get update                                                                                                             \
    && apt-get install-y gcc-arm-embedded                                                                                         \                      
    && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
    
 
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


