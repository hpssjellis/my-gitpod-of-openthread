FROM gitpod/workspace-full:latest

USER root

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B4D03348F75E3362B1E1C2A1D1FAA6ECF64D33B0

RUN apt-get update                                            \
    && add-apt-repository -y ppa:team-gcc-arm-embedded/ppa  
    
    
    
    
    
   #\   
   # && DEBIAN_FRONTEND=noninteractive add-apt-repository -y  ppa:team-gcc-arm-embedded/ppa \
   # && apt-get update  \   
   # && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends gcc-arm-embedded
 
               
# will clean folders last   
    
 
## note not installing libreadline

USER gitpod
  
RUN mkdir -p /home/gitpod/logs                                                                            \ 
    && touch /home/gitpod/logs/myDockerlog.txt                                                            \
    && echo "Installation start, made some folders in /home/gitpod" >> /home/gitpod/logs/myDockerlog.txt  \
    && echo "Installation end"                                      >> /home/gitpod/logs/myDockerlog.txt  
   

# Give back control
USER root


# Cleaning
RUN apt-get clean  && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*


