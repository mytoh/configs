#!/bin/sh

APPDIR=~/huone/ohjelmat/peercaststation
LOCKFILE=~/pecast.lock

if test -e $APPDIR/PecaStationd.exe
then
    if test -e ${LOCKFILE}
    then
        printf "* Found Lock File\n"
        printf "* Killing %s\n" $(cat ${LOCKFILE})
        kill $(cat ${LOCKFILE})
        rm ${LOCKFILE}
    fi
    sleep 1 # not sure this is needed
    printf "* Running PecaStationd.exe\n"
    mono-service -l:${LOCKFILE} ${APPDIR}/PecaStationd.exe
    printf "* Started PecaStationd.exe\n"
else
    killall mono-sgen; exec mono ${APPDIR}/PeerCastStation.exe &
fi

#exec mono --llvm --server ~/huone/ohjelmat/peercaststation/PeerCastStation.exe
