[org 0x7c00]

mov ah, 0x0e

;attempt 1
mov al, "1"
int 0x10
mov al, secret
int 0x10

;attempt
mov al, "2"
int 0x10
mov al, [secret]
int 0x10

;attempt
mov al, "3"
int 0x10
mov bx, secret
add bx, 0x7c00
mov al, [bx]
int 0x10

;attempt 4
mov al, "4"
int 0x10
mov al, [0x7c2d]
int 0x10

jmp $

secret:
    db "X"

times 510-($-$$) db 0
dw 0xaa55
