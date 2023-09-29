org 0x100
mov ax,cs
mov ds,ax
mov es,ax
mov dx,labels
mov ah,0x9
int 0x21
mov ax,0
int 0x21
loops:
jmp loops
ret
labels db "hello world.....\r\n$",0
