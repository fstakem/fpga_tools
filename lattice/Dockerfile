FROM centos:centos7

# tools
# tree

# Env vars
ENV USER=dev \
    HOME=/home/dev \
    TERM=xterm-256color \
    APP_ROOT_PATH=/opt/tools \
    SETUP_PATH=/opt/tools/setup \
    ICE_PATH=/opt/tools/ice

# Setup box
RUN mkdir -p $SETUP_PATH
RUN mkdir -p $ICE_PATH
COPY ./bin/iCEcube2setup_Sep_12_2017_1708.tgz $ICE_PATH
COPY ./bin/programmer_3_10_x64-111-2-x86_64-linux.rpm $SETUP_PATH

# tar -zxvf iCEcube2setup_Sep_12_2017_1708.tgz 

# Setup user
#RUN useradd -ms /bin/bash -G sudo $USER
#RUN chown $USER:$USER -R $SERVER_ROOT_PATH

#USER dev

# Finish
WORKDIR /opt/tools

# debug
CMD ["/bin/bash"]