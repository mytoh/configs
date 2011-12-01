#!/bin/csh -f

echo "zero filling started"
cd /
dd if=/dev/zero of=zero bs=1m
echo "removing temp file"
rm zero

