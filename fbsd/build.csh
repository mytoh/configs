#!/bin/csh -f

#csup /etc/supfile
cd /usr/src
if ( -e /usr/obj ) then
  make cleandir
  make cleandir
  rm -rfv /usr/obj
endif

cd /usr/src

make -j4 buildworld | tee /buildworld.log && make -j4 buildkernel | tee /buildkernel.log && make installkernel

