# project-Mask-RCNN (Machine Learning)

<div align="center">
  <img src="https://user-images.githubusercontent.com/1381301/66535560-d3422200-eace-11e9-9123-5535d469db19.png"/>
</div>

## Mask R-CNN
- [IEEE](https://ieeexplore.ieee.org/document/8372616)
- [paper](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8372616)
- [github](https://github.com/facebookresearch/detectron2)

## Backbone Network Architectures
- ResNeSt 2020
    - [paper](https://arxiv.org/pdf/2004.08955.pdf)
    - [ResNeSt | Pytorch](https://pytorch.org/hub/pytorch_vision_resnest/)
    - [github](https://github.com/zhanghang1989/ResNeSt)
    - [detectron2-ResNeSt](https://github.com/chongruo/detectron2-ResNeSt)
- ResNeXt 2017
    - [paper](https://arxiv.org/pdf/1611.05431.pdf)
    - [ResNeXt | Pytorch](https://pytorch.org/hub/pytorch_vision_resnext/)
    - [github](https://github.com/zhanghang1989/ResNeSt)
- ResNet 2015
    - [paper](https://arxiv.org/pdf/1512.03385.pdf)
    - [ResNet | Pytorch](https://pytorch.org/hub/pytorch_vision_resnet/)
    - [github](https://github.com/KaimingHe/deep-residual-networks)

## Dataset
- [Cocodataset](https://cocodataset.org/#download)
- How to download
    - !wget http://images.cocodataset.org/zips/train2017.zip    (Using in Colab)
    - !wget http://images.cocodataset.org/zips/val2017.zip    (Using in Colab)
    - !wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip    (Using in Colab)

---
## How to clone repo

If you have ssh-key, you can run this command
```
$ git clone git@github.com:DiaboloKiat/project-Mask-RCNN.git
```

If you have not ssh-key, you can run this command
```
$ git clone https://github.com/DiaboloKiat/project-Mask-RCNN.git
```
---
## How to run docker
First you need to build docker
```
$ cd ~/project-Mask-RCNN/docker
$ source docker_build.sh
```

Now you can run your docker
```
$ cd ~/project-Mask-RCNN/docker
$ source docker_run.sh
```

If you want to open a second terminal with docker, you can run this command
```
$ cd ~/project-Mask-RCNN/docker
$ source docker_join.sh
```
---
## How to open jupyter notebook
After you go into the docker container, you can run this command to open jupyter notebook
```
$ jupyter notebook
```
- Then press the ```ctrl``` key and click on the displayed URL to enter jupyter notebook
- All the ```.ipynb``` file will at the ```～/project-Mask-RCNN/jupyter/```, there are three ```.ipynb``` file, which are respectively ```Mask_RCNN_ResNet```, ```Mask_RCNN_ResNeXt``` and ```Mask_RCNN_ResNeSt```.

