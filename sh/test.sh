#!/bin/bash
qemu-system-x86_64 -enable-kvm -m 2048 -net none -cdrom result/iso/*.iso
exit