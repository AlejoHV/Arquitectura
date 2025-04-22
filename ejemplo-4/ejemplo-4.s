# Ejemplo de una funcion hecha em assembly


.text
.global sumar
.global restar
.global multiplicar
.global dividir

sumar:  #En lenguaje C: resultado =  sumar(int a, int b)
      add %rsi, %rdi
      mov %rdi, %rax
      ret


restar: #En lenguaje C: resultado = restar(int a, int b)
      sub %rsi, %rdi
      mov %rdi, %rax
      ret


multiplicar: #En lenguaje C: resultado = multiplicar(int a, int b)
      imul %rsi, %rdi
      mov %rdi, %rax
      ret


dividir: # En lenguaje C: resultado = dividir(int a, int b)
      mov %rdi, %rax     # Mueve el primer argumento (a) a %rax
      cqo                # Extiende el signo de %rax a %rdx (necesario para división)
      idiv %rsi          # Divide %rdx:%rax por %rsi (b)
      # El cociente está en %rax, el resto en %rdx
      ret
