#!/bin/bash

## STAGE 2 understanding the file system 

cd $HOME/myexpos/xfs-interface
./xfs-interface fdisk
./xfs-interface df

read -p "press any key to continue"

mkdir $HOME/myexpos/assignments
echo "There is a place where the sidewalk ends And before the street begins, And there the grass grows soft and white, And there the sun burns crimson bright,And there the moon-bird rests from his flight To cool in the peppermint wind." > $HOME/myexpos/assignments/sample.dat

mkdir $HOME/myexpos/xfs-interface/xsm_extractions

cd $HOME/myexpos/xfs-interface
./xfs-interface load --data $HOME/myexpos/xfs-interface/xsm_extractions/sample.dat
./xfs-interface copy 3 4 $HOME/myexpos/xfs-interface/xsm_extractions/inode_table.txt
./xfs-interface copy 69 69 $HOME/myexpos/xfs-interface/xsm_extractions/data.txt
./xfs-interface export sample.dat $HOME/xfs-interface/xsm_extractions/myexpos/data.txt