#!/bin/bash

echo "ExpL"
cd ../expl
./expl ./expl_progs/init.expl
./expl ./expl_progs/idle.expl
./expl ./expl_progs/even.expl
./expl ./expl_progs/odd.expl

echo "SPL"
cd ../spl
./spl ./spl_progs/os_startup.spl
./spl ./spl_progs/timer.spl
./spl ./spl_progs/disk.spl
./spl ./spl_progs/console.spl
./spl ./spl_progs/int6.spl
./spl ./spl_progs/int7.spl
./spl ./spl_progs/int9.spl
./spl ./spl_progs/int10.spl
./spl ./spl_progs/mod0.spl
./spl ./spl_progs/mod1.spl
./spl ./spl_progs/mod2.spl
./spl ./spl_progs/mod4.spl
./spl ./spl_progs/mod5.spl
./spl ./spl_progs/mod7.spl
./spl ./spl_progs/haltprog.spl

echo "XFS Interface"
cd ../xfs-interface
./xfs-interface fdisk
./xfs-interface load --os ../spl/spl_progs/os_startup.xsm
./xfs-interface load --exhandler ../spl/spl_progs/haltprog.xsm
./xfs-interface load --int=timer ../spl/spl_progs/timer.xsm
./xfs-interface load --int=disk ../spl/spl_progs/disk.xsm
./xfs-interface load --int=console ../spl/spl_progs/console.xsm
./xfs-interface load --int=6 ../spl/spl_progs/int6.xsm
./xfs-interface load --int=7 ../spl/spl_progs/int7.xsm
./xfs-interface load --int=9 ../spl/spl_progs/int9.xsm
./xfs-interface load --int=10 ../spl/spl_progs/int10.xsm
./xfs-interface load --module 0 ../spl/spl_progs/mod0.xsm
./xfs-interface load --module 1 ../spl/spl_progs/mod1.xsm
./xfs-interface load --module 2 ../spl/spl_progs/mod2.xsm
./xfs-interface load --module 4 ../spl/spl_progs/mod4.xsm
./xfs-interface load --module 5 ../spl/spl_progs/mod5.xsm
./xfs-interface load --module 7 ../spl/spl_progs/mod7.xsm
./xfs-interface load --library ../expl/library.lib
./xfs-interface load --init ../expl/expl_progs/init.xsm
./xfs-interface load --idle ../expl/expl_progs/idle.xsm
./xfs-interface load --exec ../expl/expl_progs/even.xsm
./xfs-interface load --exec ../expl/expl_progs/odd.xsm

echo "Completed."
