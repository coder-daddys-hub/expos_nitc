#!/bin/bash

## STAGE 12 Multiprogramming

cd $HOME/myexpos/expl
./expl expl_progs/idle.expl

cd $HOME/myexpos/spl
./spl spl_progs/os_v6.spl
./spl spl_progs/INT1_timer_v3.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface load --idle $HOME/myexpos/expl/expl_progs/idle.xsm
./xfs-interface load --os $HOME/myexpos/spl_progs/os_v6.xsm
./xfs-interface load --os $HOME/myexpos/spl_progs/INT1_timer_v3.xsm

cd $HOME/myexpos/xsm
./xsm --timer 0