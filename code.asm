org 0x100
jmp start

grade dw 69h, 87h, 96h, 45h, 75h

start:
    mov si, 0              ; SI points to first element
    mov ax, [grade]        ; AX = initial minimum

    mov dx, 5              ; number of elements
    dec dx                 ; already loaded first element

next:
             ; move to next element
    cmp ax, [grade + 2]   ; compare min with current
    jle skip               ; if AX <= current, skip
    mov ax, [grade + 2]   ; update minimum

skip:
    dec dx                 ; decrease counter
    jnz next               ; loop until DX = 0

    mov ax, 4C00h
    int 21h
