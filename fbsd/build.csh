#!/bin/csh -f

set srcdir = /usr/src

#csup /home/mytoh/local/git/configs/fbsd/current-supfile
cd $srcdir
svn up
if ( -e $srcdir/obj ) then
  make cleandir
  make cleandir
  rm -rfv /usr/obj
endif

cd $srcdir

make -j2 buildworld | tee /buildworld.log && make -j2 buildkernel | tee /buildkernel.log && make installkernel

