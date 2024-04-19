mov ah, 0x0e
mov bl, 'a'
casing:
  mov al, bl
  and al, 1
  jz uppercase
  mov ah, 0x0e
  mov al, bl
  int 0x10
  inc bl

uppercase:
  mov ah, 0x0e
  mov al, bl
  add al, -0x20
  int 0x10
  inc bl
  cmp bl, 'z'
  jbe casing

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa