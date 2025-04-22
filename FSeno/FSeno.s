
.text
.global Fseno

Fseno:
    # xmm0 = ángulo en radianes

    # Primero normalizar el ángulo a [-π, π]

    # Calcular x²
    movapd %xmm0, %xmm1
    mulsd %xmm0, %xmm0        # xmm0 = x²

    # Coeficientes optimizados para precisión double
    movq $0x3ea51a6680000000, %rax  # p0 = -1.66666666666666307295e-01
    movq %rax, %xmm2
    movq $0x3f8111111110f7d0, %rax  # p1 = 8.33333333332211858878e-03
    movq %rax, %xmm3
    movq $0xbf2a01a019b92ee6, %rax  # p2 = -1.98412698295895385996e-04
    movq %rax, %xmm4
    movq $0x3ec71de3535c8a8a, %rax  # p3 = 2.75573137070700678289e-06
    movq %rax, %xmm5

    # Evaluación polinomio con Horner
    mulsd %xmm0, %xmm5
    addsd %xmm4, %xmm5
    mulsd %xmm0, %xmm5
    addsd %xmm3, %xmm5
    mulsd %xmm0, %xmm5
    addsd %xmm2, %xmm5
    mulsd %xmm0, %xmm5
    mulsd %xmm1, %xmm5
    addsd %xmm1, %xmm5

    movapd %xmm5, %xmm0

fin:
  ret
