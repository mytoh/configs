#!/bin/sh
killall mono-sgen
mono ~/huone/ohjelmat/peercaststation/PeerCastStation.exe &
#kill $(cat ~/pecast.lock) && rm ~/pecast.lock; exec mono-service -l:/home/mytoh/pecast.lock -d:/home/mytoh/huone/ohjelmat/peercaststation -m:PeerCastStation ~/huone/ohjelmat/peercaststation/PeerCastStation.exe
#exec mono --llvm --server ~/huone/ohjelmat/peercaststation/PeerCastStation.exe
