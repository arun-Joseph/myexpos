#!/bin/bash

echo "ExpL"
cd ../expl

echo "SPL"
cd ../spl
./spl ./spl_progs/oddnos.spl
./spl ./spl_progs/squaresum.spl

echo "XFS Interface"
cd ../xfs-interface
./xfs-interface load --os ../spl/spl_progs/oddnos.xsm
./xfs-interface load --os ../spl/spl_progs/squaresum.xsm

echo "Completed."
