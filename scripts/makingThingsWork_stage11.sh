#!/bin/bash

## STAGE 11 EXPL Language

cd $HOME/myexpos/expl
./expl expl_progs/numbers50.expl

cd $HOME/myexpos/xfs-interface
./xfs-interface load --init $HOME/myexpos/expl/expl_progs/numbers50.xsm

cd $HOME/myexpos/xsm
./xsm