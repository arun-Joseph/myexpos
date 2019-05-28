#!/bin/bash

echo "ExpL"
cd ../expl
./expl ./expl_progs/init.expl
./expl ./expl_progs/idle.expl
./expl ./expl_progs/even.expl
./expl ./expl_progs/odd.expl
./expl ./expl_progs/list.expl
./expl ./expl_progs/list2.expl
./expl ./expl_progs/rw_prog.expl
./expl ./expl_progs/rw_prog2.expl
./expl ./expl_progs/parent.expl
./expl ./expl_progs/pid.expl
./expl ./expl_progs/child.expl
./expl ./expl_progs/create.expl
./expl ./expl_progs/delete.expl
./expl ./expl_progs/read.expl
./expl ./expl_progs/read2.expl
./expl ./expl_progs/write.expl
./expl ./expl_progs/write2.expl
./expl ./expl_progs/ls.expl
./expl ./expl_progs/rm.expl
./expl ./expl_progs/cp.expl
./expl ./expl_progs/cat.expl
./expl ./expl_progs/merge_s.expl
./expl ./expl_progs/merge_p.expl
./expl ./expl_progs/merge_f.expl

echo "SPL"
cd ../spl
./spl ./spl_progs/os_startup.spl
./spl ./spl_progs/exception.spl
./spl ./spl_progs/timer.spl
./spl ./spl_progs/disk.spl
./spl ./spl_progs/console.spl
./spl ./spl_progs/int4.spl
./spl ./spl_progs/int5.spl
./spl ./spl_progs/int6.spl
./spl ./spl_progs/int7.spl
./spl ./spl_progs/int8.spl
./spl ./spl_progs/int9.spl
./spl ./spl_progs/int10.spl
./spl ./spl_progs/int11.spl
./spl ./spl_progs/int13.spl
./spl ./spl_progs/int14.spl
./spl ./spl_progs/int15.spl
./spl ./spl_progs/mod0.spl
./spl ./spl_progs/mod1.spl
./spl ./spl_progs/mod2.spl
./spl ./spl_progs/mod3.spl
./spl ./spl_progs/mod4.spl
./spl ./spl_progs/mod5.spl
./spl ./spl_progs/mod7.spl

echo "XFS Interface"
cd ../xfs-interface
./xfs-interface fdisk
./xfs-interface load --os ../spl/spl_progs/os_startup.xsm
./xfs-interface load --exhandler ../spl/spl_progs/exception.xsm
./xfs-interface load --int=timer ../spl/spl_progs/timer.xsm
./xfs-interface load --int=disk ../spl/spl_progs/disk.xsm
./xfs-interface load --int=console ../spl/spl_progs/console.xsm
./xfs-interface load --int=4 ../spl/spl_progs/int4.xsm
./xfs-interface load --int=5 ../spl/spl_progs/int5.xsm
./xfs-interface load --int=6 ../spl/spl_progs/int6.xsm
./xfs-interface load --int=7 ../spl/spl_progs/int7.xsm
./xfs-interface load --int=8 ../spl/spl_progs/int8.xsm
./xfs-interface load --int=9 ../spl/spl_progs/int9.xsm
./xfs-interface load --int=10 ../spl/spl_progs/int10.xsm
./xfs-interface load --int=11 ../spl/spl_progs/int11.xsm
./xfs-interface load --int=13 ../spl/spl_progs/int13.xsm
./xfs-interface load --int=14 ../spl/spl_progs/int14.xsm
./xfs-interface load --int=15 ../spl/spl_progs/int15.xsm
./xfs-interface load --module 0 ../spl/spl_progs/mod0.xsm
./xfs-interface load --module 1 ../spl/spl_progs/mod1.xsm
./xfs-interface load --module 2 ../spl/spl_progs/mod2.xsm
./xfs-interface load --module 3 ../spl/spl_progs/mod3.xsm
./xfs-interface load --module 4 ../spl/spl_progs/mod4.xsm
./xfs-interface load --module 5 ../spl/spl_progs/mod5.xsm
./xfs-interface load --module 7 ../spl/spl_progs/mod7.xsm
./xfs-interface load --library ../expl/library.lib
./xfs-interface load --init ../expl/expl_progs/init.xsm
./xfs-interface load --idle ../expl/expl_progs/idle.xsm
./xfs-interface load --exec ../expl/expl_progs/even.xsm
./xfs-interface load --exec ../expl/expl_progs/odd.xsm
./xfs-interface load --exec ../expl/expl_progs/list.xsm
./xfs-interface load --exec ../expl/expl_progs/list2.xsm
./xfs-interface load --exec ../expl/expl_progs/rw_prog.xsm
./xfs-interface load --exec ../expl/expl_progs/rw_prog2.xsm
./xfs-interface load --exec ../expl/expl_progs/parent.xsm
./xfs-interface load --exec ../expl/expl_progs/pid.xsm
./xfs-interface load --exec ../expl/expl_progs/child.xsm
./xfs-interface load --exec ../expl/expl_progs/create.xsm
./xfs-interface load --exec ../expl/expl_progs/delete.xsm
./xfs-interface load --exec ../expl/expl_progs/read.xsm
./xfs-interface load --exec ../expl/expl_progs/read2.xsm
./xfs-interface load --exec ../expl/expl_progs/write.xsm
./xfs-interface load --exec ../expl/expl_progs/write2.xsm
./xfs-interface load --exec ../expl/expl_progs/ls.xsm
./xfs-interface load --exec ../expl/expl_progs/rm.xsm
./xfs-interface load --exec ../expl/expl_progs/cp.xsm
./xfs-interface load --exec ../expl/expl_progs/cat.xsm
./xfs-interface load --exec ../expl/expl_progs/merge_s.xsm
./xfs-interface load --exec ../expl/expl_progs/merge_p.xsm
./xfs-interface load --exec ../expl/expl_progs/merge_f.xsm
./xfs-interface load --data ../sample.dat

echo "Completed."
