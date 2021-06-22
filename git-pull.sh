#! /bin/bash

# echo "password: $2"
BRANCH=master
if [ ! -z "$1" ]; then
    echo "pull branch: $1"
    BRANCH=$1
fi

echo "---------------------------------------------------------------------------------"
echo "---------------------------pull project-Mask-RCNN--------------------------------"
echo "---------------------------------------------------------------------------------"
git pull

CONFLICTS=$(git ls-files -u | wc -l)
if [ "$CONFLICTS" -gt 0 ] ; then
   echo "There is conflict in project-Mask-RCNN. Aborting"
   return 1
fi

echo "-----------------------------------------------------------------------"
echo "-------------------------pull detectron2-------------------------------"
echo "-----------------------------------------------------------------------"
cd ~/project-Mask-RCNN/catkin_ws/src/mask_rcnn
git checkout $BRANCH
git pull

CONFLICTS=$(git ls-files -u | wc -l)
if [ "$CONFLICTS" -gt 0 ] ; then
   echo "There is conflict in detectron2. Aborting"
   return 1
fi

cd ~/project-Mask-RCNN
return 0