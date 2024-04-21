#!/bin/bash

## STAGE 5 XSM Debugging
cd $HOME/myexpos/spl
./spl $HOME/myexpos/spl/spl_progs/user_programs/oddnosdebug.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface load --os $HOME/myexpos/spl/spl_progs/User_programs/oddnosdebug.xsm
 
cd $HOME/myexpos/xsm
./xsm --debug