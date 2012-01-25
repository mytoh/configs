#!/bin/csh -f

csup /home/mytoh/local/git/configs/fbsd/current-supfile
cd /usr/src
if ( -e /usr/obj ) then
  make cleandir
  make cleandir
  rm -rfv /usr/obj
endif

cd /usr/src

make -j2 buildworld | tee /buildworld.log && make -j2 buildkernel | tee /buildkernel.log && make installkernel

