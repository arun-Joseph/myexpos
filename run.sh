#!/bin/bash

echo "ExpL"
cd ../expl

echo "SPL"
cd ../spl
./spl ./spl_progs/debug.spl

echo "XFS Interface"
cd ../xfs-interface
./xfs-interface fdisk
./xfs-interface load --os ../spl/spl_progs/debug.xsm

echo "Completed."
