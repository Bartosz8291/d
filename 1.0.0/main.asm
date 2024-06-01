section .data
    hello db 'Hello!', 0x0A  ; 'Hello!' string with a newline character

section .text
    global _start           ; Entry point for the linker

_start:
    ; Write the string to stdout
    mov rax, 1              ; syscall number for sys_write
    mov rdi, 1              ; file descriptor 1 is stdout
    mov rsi, hello          ; pointer to the string
    mov rdx, 7              ; length of the string
    syscall                 ; make the syscall

    ; Exit the program
    mov rax, 60             ; syscall number for sys_exit
    xor rdi, rdi            ; exit code 0
    syscall                 ; make the syscall
