#!/bin/bash

## STAGE 3 Bootstrap Loader

cd $HOME/myexpos/xfs-interface
./xfs-interface load --os $HOME/myexpos/spl/spl_progs/user_programs/helloworld.xsm
./xfs-interface exit

cd $HOME/myexpos/xsm
./xsm