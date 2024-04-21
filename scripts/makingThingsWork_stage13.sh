#!/bin/bash

## STAGE 13 Boot Module

cd $HOME/myexpos/spl
spl$ ./spl ./spl_progs/modules/MOD7_Boot_module.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface load —-os $HOME/myexpos/spl/spl_progs/operating_sytem/os_v7.xsm
./xfs-interface load —-module [7] $HOME/myexpos/spl/spl_progs/module/MOD7_Boot_module.xsm

cd $HOME/myexpos/xsm
./xsm —-timer 10