#!/bin/bash

## STAGE 10 Console Output

cd $HOME/myexpos/spl
./spl ./spl_progs/os_v5.spl INT7_write.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface load --os $HOME/myexpos/spl/spl_progs/os_v5.xsm
./xfs-interface load --int=7 $HOME/myexpos/spl/spl_progs/INT7_write.xsm
./xfs-interface load --init $HOME/myexpos/spl/spl_progs/squares_v3.xsm

cd $HOME/myexpos/xfs-interface/
./xfs-interface timer 0