
.data

mensaje: .asciz "Numero1 %d numero2 %d \r\n"

.text
.global main
.extern printf #similar al inclede stdio.h

main:
_start:

    subq $8, %rsp  # Alineamos los datos

    mov  $4, %rax
    mov  $5, %rbx

    movq  $mensaje, %rdi
    movq  %rax, %rsi
    movq  %rbx, %rdx

    call imprimir

    call salir

salir:
    # salir al sistema
    mov $60, %rax
    mov $0, %rdi
    syscall

# Funcion que imprime enteros en consola
imprimir:

    # RAX se pone en 0 para indicar que necesitamos 0 registros de punto flotante 
    mov  $0, %rax     #rax=0  toca memoria
    xor  %rax, %rax   #rax=0  no toca memoria

    call printf

    add $8, %rsp
