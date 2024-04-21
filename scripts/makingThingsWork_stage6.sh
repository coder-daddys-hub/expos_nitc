#!/bin/bash

## STAGE 6 Running a user program

cd $HOME/myexpos/spl
./spl $HOME/myexpos/spl/spl_progs/interrupts/INT10_haltprog.spl
./spl $HOME/myexpos/spl/spl_progs/operating_system/os_v1.spl

cd $HOME/myexpos/xsf-interface
./xfs-interface #load --init $HOME/myexpos/spl/spl__progs/user_programs/squares_v1.xsm
./xfs-interface #load --int=10 $HOME/myexpos/spl/spl_progs/interrupts/INT10_haltprog.xsm
./xfs-interface #load --exhandler $HOME/myexpos/spl/spl_progs/interrupts/INT10_haltprog.xsm
./xfs-interface #load --os $HOME/myexpos/spl/spl_progs/operating_system/os_v1.xsm

cd $HOME/myexpos/xsm
./xsm --debug --timer 0
