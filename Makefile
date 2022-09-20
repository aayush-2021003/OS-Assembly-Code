a.out:Aayush_2021003.o
	gcc -m64 -no-pie Aayush_2021003.o
Aayush_2021003.o:Aayush_2021003.asm
	nasm -felf64 -g Aayush_2021003.asm
