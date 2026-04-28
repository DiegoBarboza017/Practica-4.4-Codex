    .section .data
msg:        .ascii "Resultado: "
msg_len = . - msg
nl:         .ascii "\n"
num_buf:    .byte '0'

    .section .text
    .global _start

    .macro PRINT ptr, len
        mov x0, #1          // stdout
        ldr x1, =\ptr       // buffer
        mov x2, #\len       // length
        mov x8, #64         // sys_write
        svc #0
    .endm

_start:
    // Valores de ejemplo: 7 + 5 = 12
    mov x19, #7
    mov x20, #5
    add x21, x19, x20

    // Imprime prefijo
    PRINT msg, msg_len

    // Conversión mínima para 0-99
    mov x22, #10
    udiv x23, x21, x22      // decenas
    msub x24, x23, x22, x21 // unidades = suma - decenas*10

    // Si hay decenas, imprimir primer dígito
    cbz x23, print_units_only
    add w23, w23, #'0'
    strb w23, [num_buf]
    PRINT num_buf, 1

print_units_only:
    add w24, w24, #'0'
    strb w24, [num_buf]
    PRINT num_buf, 1

    // Salto de línea
    PRINT nl, 1

    // exit(0)
    mov x0, #0
    mov x8, #93
    svc #0
