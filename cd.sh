bcc -c -Md libdos.c -o libdos.a
bcc -x -i -L -Md key.c -o key.com
bcc -x -i -L -Md msg.c -o msg.com
bcc -x -i -L -Md window.c -o win.com
bcc -x -i -L -Md window2.c -o win2.com
bcc -x -i -L -Md font.c -o font.com
bcc -x -i -L -Md screen.c -o scr.com
bcc -x -i -L -Md s12.c -o s12.com
bcc -x -i -L -Md monitor.c -o mn.com
nasm hello.asm -o hello.com
nasm print.asm -o print.com
nasm auto.asm -o auto.com
nasm cls.asm -o cls.com
nasm exit.asm -o exit.com
mkdir -p CD_root/isolinux
mkdir -p CD_root/images
mkdir -p CD_root/kernel
cp isolinux.bin CD_root/isolinux/isolinux.bin
cp isolinux.cfg CD_root/isolinux/isolinux.cfg
cp *.bss CD_root/isolinux/
cp *.sys CD_root/isolinux/
cp *.c32 CD_root/isolinux/
cp *.com CD_root/isolinux/
cp *.elf CD_root/isolinux/
cp *.jpg CD_root/isolinux/
cp *.menu CD_root/isolinux/
genisoimage -o myos.iso -input-charset utf-8 -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4  -boot-info-table ./CD_root 

