FROM nvidia/cuda:11.1-cudnn8-devel-ubuntu18.04

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROS_DISTRO melodic

###################################### user #####################################

ENV SHELL=/bin/bash \
    USER=kiat \
    UID=1000 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

ENV HOME=/home/${USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${UID} \
    ${USER} 

RUN echo "root:root" | chpasswd
RUN echo "${USER}:111111" | chpasswd

###################################### basic tools #####################################

RUN apt-get -o Acquire::ForceIPv4=true update && apt-get -yq dist-upgrade \
    && apt-get -o Acquire::ForceIPv4=true install -yq --no-install-recommends \
    locales \
    cmake \
    make \
    git \
    vim \
    gedit \
    wget \
    sudo \
    curl \
    build-essential \
    net-tools \
    dirmngr \
    gnupg2 \
    mercurial \
    python-gtk2 \
    python-gobject \
    python-tk \
    python3-pip \
    python3-setuptools \
    lsb-release \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    libignition-math4-dev \
    libmove-base-msgs-dev \
    ruby-full \
    python3-opencv \
    ca-certificates \
    python3-dev \
    ninja-build \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

##################################### PIP ######################################

RUN pip3 install --upgrade pip setuptools

RUN pip3 install --upgrade \
    gym \
    numpy \
    tensorboard \
    cmake \
    tensorflow \
    gast==0.2.2 \
    matplotlib \
    pandas \
    pypozyx \
    requests \
    jupyter \
    ipykernel \
    rospkg \
    catkin-tools \
    scikit-image \
    scikit-learn \
    zerorpc \
    lxml \
    empy  \
    opencv-python \
    scipy


RUN pip3 install \
    torch==1.8.0+cu111 \
    torchvision==0.9.0+cu111 \
    torchaudio==0.8.0 \
    -f https://download.pytorch.org/whl/torch_stable.html

RUN pip install --user 'git+https://github.com/facebookresearch/fvcore'

##################################### setting #####################################
RUN chown -R ${USER}:${USER} ${HOME}/
RUN echo "kiat ALL=(ALL)  ALL" > /etc/sudoers

RUN echo "cd ~/project-Mask-RCNN" >> ${HOME}/.bashrc

# Support of nvidia-docker 2.0
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all


USER ${USER}

WORKDIR ${HOME}

