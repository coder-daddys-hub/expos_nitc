#!/bin/bash

## STAGE 8 Timer Interrupt

cd $HOME/myexpos/spl
./spl ./spl/spl_progs/interrupts/INT1_timer_v1.xsm
./spl ./spl/spl_progs/operating_system os_v3.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface load --int=timer $HOME/myexpos/spl/spl_progs/interrupts/INT1_timer_v1.xsm
./xfs-interface load --os $HOME/myexpos/spl/spl_progs/operating_system/os_v3.xsm

cd $HOME/myexpos/xsm
./xsm --timer 2