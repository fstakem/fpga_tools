FROM centos:centos7

# Needed to run ice
RUN yum update ; \
    yum install -y libXext libpng libSM libXi libXrender libXrandr \
        libXfixes libXcursor libXinerama freetype fontconfig

RUN yum install -y glibc.i686 glib2.i686 \
    zlib.i686 libXext.i686 libpng12.i686 \
    libSM.i686 libXrender.i686 libXfixes.i686 libXrandr.i686 \
    libXcursor.i686 freetype.i686 fontconfig.i686

RUN yum install -y libXtst.i686 libXinerama.i686

# Needed to run programmer
RUN yum install -y libXft libusb libXScrnSaver

# Personal programs needed
RUN yum install -y tree

# Env vars
ENV USER=dev \
    HOME=/home/dev \
    TERM=xterm-256color \
    APP_ROOT_PATH=/opt/tools \
    SETUP_PATH=/opt/tools/setup \
    LICENSE_PATH=/opt/tools/setup/license \
    ICE_PATH=/opt/tools/ice

# Setup box
RUN mkdir -p $SETUP_PATH

RUN mkdir -p $LICENSE_PATH
COPY ./bin/ice_license.dat $LICENSE_PATH
COPY ./bin/diamond_license.dat $LICENSE_PATH

RUN mkdir -p $ICE_PATH
COPY ./bin/iCEcube2setup_Sep_12_2017_1708.tgz $ICE_PATH
RUN tar -zxvf $ICE_PATH/iCEcube2setup_Sep_12_2017_1708.tgz

COPY ./bin/programmer_3_10_x64-111-2-x86_64-linux.rpm $SETUP_PATH
RUN rpm -Uvh $SETUP_PATH/programmer_3_10_x64-111-2-x86_64-linux.rpm


RUN adduser -u 1000 -g 100 $USER
RUN chown 1000:100 -R $APP_ROOT_PATH
USER dev

# Finish
WORKDIR /opt/tools

# debug
CMD ["/bin/bash"]
