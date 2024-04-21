#!/bin/bash

## STAGE 4 SPL Language

cd $HOME/myexpos/spl
./spl spl_progs/user_programs/oddnos.spl

cd $HOME/myexpos/xfs-interface
./xfs-interface load --os $HOME/myexpos/spl/spl_progs/oddnos.xsm#!/bin/bash
