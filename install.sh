sudo mkdir /diskfile/
sudo wget -O /diskfile/a.qcow2 https://www.dropbox.com/scl/fi/cc9lf87xnh66ul3u4sd49/a.qcow2?rlkey=blz19a6d4psbcb7aqnyn9ozfk&dl=1
sudo qemu-system-x86_64 -M q35,usb=on -device usb-tablet -cpu host,+avx -smp sockets=1,cores=2,threads=2 -m 8192M -device virtio-balloon-pci -object memory-backend-ram,size=8192M,id=m0 -device qxl-vga,vgamem_mb=1024 -device intel-hda -device hda-duplex -device virtio-net-pci,netdev=n0 -netdev user,id=n0 -boot c -device virtio-serial-pci -device virtio-rng-pci -enable-kvm -drive file=/diskfile/a.qcow2 -vnc :0
