FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04

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
    unzip \
    zip \
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

RUN wget https://bootstrap.pypa.io/get-pip.py && \
	python3 get-pip.py --user && \
	rm get-pip.py

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
    torch==1.7.1+cu110 \
    torchvision==0.8.2+cu110 \
    torchaudio==0.7.2 \
    -f https://download.pytorch.org/whl/torch_stable.html

RUN pip3 install --user 'git+https://github.com/facebookresearch/fvcore'


##################################### install detectron2 #####################################
RUN git clone https://github.com/DiaboloKiat/detectron2.git detectron2_repo

RUN pip3 install --user -e detectron2_repo

##################################### setting #####################################
RUN chown -R ${USER}:${USER} ${HOME}/
RUN echo "kiat ALL=(ALL)  ALL" > /etc/sudoers

RUN echo "cd ~/project-Mask-RCNN" >> ${HOME}/.bashrc

# Support of nvidia-docker 2.0
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all


USER ${USER}

WORKDIR ${HOME}

