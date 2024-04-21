#!/bin/bash

## STAGE 9 Handling Kernel Stack

cd $HOME/myexpos/spl
./spl ./spl_progs/interrupts/INT1_timer_v2.spl
./spl ./spl_progs/operating_system/os_v4.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface --int=timer $HOME/myexpos/spl/spl_progs/INT1_timer_v2.xsm
./xfs-interface load --os $HOME/myexpos/spl/spl_progs/operating_system/os_v4.xsm

cd $HOME/myexpos/xsm
./xsm --timer 20