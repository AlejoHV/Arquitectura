
.data
mensaje: .asciz "%ld \n"

.text
.global main
.extern printf      # Indico que quiero utilizar printf de libc

main:

  subq $8, %rsp     #Alineacion de datos

  mov  $4, %rax     # rax=4
  mov  $5, %rbx     # rbx=5
  add  %rbx, %rax   # rax=rax+rbx

  cmp $1, %rax

  cmp $12, %rax

  movq $mensaje, %rdi
  movq %rax, %rsi
  xorl %eax, %eax
  call printf

  movq $mensaje, %rdi
  xorl %eax, %eax
  call printf

  addq $8, %rsp   # Alineacion de datos original


  mov $60, %rax   # Indico que vamos a usar la funcion exit
  mov $0,  %rdi   # Indico que el argumento tiene un valor de 0
  syscall         # No es parte de ensamblador pero llama a las funciones del sistema
