.section .data
msg:
    .ascii "\033[H\033[2J\033[3J"
len = . - msg

.section .text
.global _start
_start:
    mov $4, %eax
    mov $1, %ebx
    mov $msg, %ecx
    mov $len, %edx
    int $0x80

    mov $1, %eax
    xor %ebx, %ebx
    int $0x80
