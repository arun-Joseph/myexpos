#!/bin/bash

echo "ExpL"
cd ../expl

echo "SPL"
cd ../spl
./spl ./spl_progs/os_startup.spl
./spl ./spl_progs/sample_timer.spl
./spl ./spl_progs/haltprog.spl

echo "XFS Interface"
cd ../xfs-interface
./xfs-interface fdisk
./xfs-interface load --os ../spl/spl_progs/os_startup.xsm
./xfs-interface load --exhandler ../spl/spl_progs/haltprog.xsm
./xfs-interface load --int=timer ../spl/spl_progs/sample_timer.xsm
./xfs-interface load --int=10 ../spl/spl_progs/haltprog.xsm
./xfs-interface load --library ../expl/library.lib
./xfs-interface load --init ../expl/expl_progs/init.xsm

echo "Completed."
