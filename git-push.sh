#!/bin/bash

git config --global user.name "DiaboloKiat"
git config --global user.email "DiaboloKiat@gmail.com"

git status
echo "Enter your message"
read message

BRANCH=master
if [ ! -z "$1" ]; then
    echo "operator on branch: $1"
    BRANCH=$1
fi

echo "--------------------------------------------------------------------------------"
source ~/project-Mask-RCNN/git-pull.sh $BRANCH

PULLSTAT=$?
if [ "$PULLSTAT" -gt 0 ] ; then
   echo "There is conflict. Aborting"
   cd $cur_path/
   return
fi
echo "--------------------------------------------------------------------------------"
echo "-------------------------pull success-------------------------------------------"
echo "--------------------------------------------------------------------------------"


# push master
echo "-----------------------------------------------------------------------"
echo "--------------------------push detectron2----------------------------"
echo "-----------------------------------------------------------------------"
cd ~/project_seadrone/catkin_ws/src/mask_rcnn
git add -A
git commit -m "${message} on detectron2"
git push

# echo "------------------------------------------------------------------------"
# echo "---------------------------push project-Mask-RCNN--------------------------------"
# echo "------------------------------------------------------------------------"
# cd ~/project-Mask-RCNN/
# git add -A
# git commit -m "${message}"
# git push
