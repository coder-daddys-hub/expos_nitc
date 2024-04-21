#!/bin/bash

## STAGE 7 ABI and XEXE Format

cd $HOME/myexpos/spl
./spl $HOME/myexpos/spl/spl_progs/os_v2.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface load --init $HOME/myexpos/spl_progs/user_programs/squares_v2.xsm
./xfs-interface load --library $HOME/expl/library.lib
./xfs-interface load --os $HOME/myexpos/spl/spl_progs/os_v2.xsm

cd $HOME/myexpos/xsm
./xsm --debug --timer 0