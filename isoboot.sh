#!/bin/bash

read -p "Path to iso: " ISO
read -p "Target : " DEVICE

sudo dd if=$ISO of=$DEVICE bs=4M status=progress oflag=nocache,sync && sync
