#!/bin/bash

echo "ExpL"
cd ../expl
./expl ./expl_progs/login.expl
./expl ./expl_progs/shell.expl
./expl ./expl_progs/idle.expl
./expl ./expl_progs/even.expl
./expl ./expl_progs/odd.expl
./expl ./expl_progs/list.expl
./expl ./expl_progs/list2.expl
./expl ./expl_progs/rw_prog.expl
./expl ./expl_progs/rw_prog2.expl
./expl ./expl_progs/parent.expl
./expl ./expl_progs/pid.expl
./expl ./expl_progs/delay.expl
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
./expl ./expl_progs/lu.expl
./expl ./expl_progs/ru.expl
./expl ./expl_progs/test1.expl
./expl ./expl_progs/pgm1.expl
./expl ./expl_progs/test2.expl
./expl ./expl_progs/pgm2.expl
./expl ./expl_progs/merge_s.expl
./expl ./expl_progs/merge_p.expl
./expl ./expl_progs/merge_f.expl
./expl ./expl_progs/merge.expl
./expl ./expl_progs/m_store.expl
./expl ./expl_progs/m_sort.expl
./expl ./expl_progs/m_merge.expl

echo "SPL"
cd ../nespl
./spl ./spl_progs/os_startup.spl
./spl ./spl_progs/os2_startup.spl
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
./spl ./spl_progs/int12.spl
./spl ./spl_progs/int13.spl
./spl ./spl_progs/int14.spl
./spl ./spl_progs/int15.spl
./spl ./spl_progs/int16.spl
./spl ./spl_progs/int17.spl
./spl ./spl_progs/mod0.spl
./spl ./spl_progs/mod1.spl
./spl ./spl_progs/mod2.spl
./spl ./spl_progs/mod3.spl
./spl ./spl_progs/mod4.spl
./spl ./spl_progs/mod5.spl
./spl ./spl_progs/mod6.spl
./spl ./spl_progs/mod7.spl
./spl ./spl_progs/mod8.spl

echo "XFS Interface"
cd ../nexfs-interface
./xfs-interface fdisk
./xfs-interface load --os=primary ../nespl/spl_progs/os_startup.xsm
./xfs-interface load --os=secondary ../nespl/spl_progs/os2_startup.xsm
./xfs-interface load --exhandler ../nespl/spl_progs/exception.xsm
./xfs-interface load --int=timer ../nespl/spl_progs/timer.xsm
./xfs-interface load --int=disk ../nespl/spl_progs/disk.xsm
./xfs-interface load --int=console ../nespl/spl_progs/console.xsm
./xfs-interface load --int=4 ../nespl/spl_progs/int4.xsm
./xfs-interface load --int=5 ../nespl/spl_progs/int5.xsm
./xfs-interface load --int=6 ../nespl/spl_progs/int6.xsm
./xfs-interface load --int=7 ../nespl/spl_progs/int7.xsm
./xfs-interface load --int=8 ../nespl/spl_progs/int8.xsm
./xfs-interface load --int=9 ../nespl/spl_progs/int9.xsm
./xfs-interface load --int=10 ../nespl/spl_progs/int10.xsm
./xfs-interface load --int=11 ../nespl/spl_progs/int11.xsm
./xfs-interface load --int=12 ../nespl/spl_progs/int12.xsm
./xfs-interface load --int=13 ../nespl/spl_progs/int13.xsm
./xfs-interface load --int=14 ../nespl/spl_progs/int14.xsm
./xfs-interface load --int=15 ../nespl/spl_progs/int15.xsm
./xfs-interface load --int=16 ../nespl/spl_progs/int16.xsm
./xfs-interface load --int=17 ../nespl/spl_progs/int17.xsm
./xfs-interface load --module 0 ../nespl/spl_progs/mod0.xsm
./xfs-interface load --module 1 ../nespl/spl_progs/mod1.xsm
./xfs-interface load --module 2 ../nespl/spl_progs/mod2.xsm
./xfs-interface load --module 3 ../nespl/spl_progs/mod3.xsm
./xfs-interface load --module 4 ../nespl/spl_progs/mod4.xsm
./xfs-interface load --module 5 ../nespl/spl_progs/mod5.xsm
./xfs-interface load --module 6 ../nespl/spl_progs/mod6.xsm
./xfs-interface load --module 7 ../nespl/spl_progs/mod7.xsm
./xfs-interface load --module 8 ../nespl/spl_progs/mod8.xsm
./xfs-interface load --library ../expl/library.lib
./xfs-interface load --init ../expl/expl_progs/login.xsm
./xfs-interface load --shell ../expl/expl_progs/shell.xsm
./xfs-interface load --idle ../expl/expl_progs/idle.xsm
./xfs-interface load --exec ../expl/expl_progs/even.xsm
./xfs-interface load --exec ../expl/expl_progs/odd.xsm
./xfs-interface load --exec ../expl/expl_progs/list.xsm
./xfs-interface load --exec ../expl/expl_progs/list2.xsm
./xfs-interface load --exec ../expl/expl_progs/rw_prog.xsm
./xfs-interface load --exec ../expl/expl_progs/rw_prog2.xsm
./xfs-interface load --exec ../expl/expl_progs/parent.xsm
./xfs-interface load --exec ../expl/expl_progs/pid.xsm
./xfs-interface load --exec ../expl/expl_progs/delay.xsm
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
./xfs-interface load --exec ../expl/expl_progs/lu.xsm
./xfs-interface load --exec ../expl/expl_progs/ru.xsm
./xfs-interface load --exec ../expl/expl_progs/test1.xsm
./xfs-interface load --exec ../expl/expl_progs/pgm1.xsm
./xfs-interface load --exec ../expl/expl_progs/test2.xsm
./xfs-interface load --exec ../expl/expl_progs/pgm2.xsm
./xfs-interface load --exec ../expl/expl_progs/merge_s.xsm
./xfs-interface load --exec ../expl/expl_progs/merge_p.xsm
./xfs-interface load --exec ../expl/expl_progs/merge_f.xsm
./xfs-interface load --exec ../expl/expl_progs/merge.xsm
./xfs-interface load --exec ../expl/expl_progs/m_store.xsm
./xfs-interface load --exec ../expl/expl_progs/m_sort.xsm
./xfs-interface load --exec ../expl/expl_progs/m_merge.xsm
./xfs-interface load --data ../sample.dat

echo "Completed."
