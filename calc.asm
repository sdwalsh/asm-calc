global _start

section .rodata
	hello_world: db "Hello world!", 0xA, 0x0

section .text
_start:
	mov eax, 0x04 ; store 4 in the eax register
	mov ebx, 0x1 ; file description
	mov ecx, hello_world ; pointer to the string from above
	mov edx, 14 ; the length of the string "Hello world!"
	int 0x80 ; interrupt signal 0x80 -- syscall

	mov eax, 0x01 ; exit()
	mov ebx, 0 ; no error
	int 0x80
