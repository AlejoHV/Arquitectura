#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Declaración de la función en ensamblador
double Fseno(double radianes);

// Función para normalizar ángulo al rango
double normalizar_angulo(double angulo) {
    const double dos_pi = 2.0 * M_PI;
    // Eliminar múltiplos de 2π
    angulo = fmod(angulo, dos_pi);
    // Asegurar que está en [-π, π]
    if (angulo > M_PI) {
        angulo -= dos_pi;
    } else if (angulo < -M_PI) {
        angulo += dos_pi;
    }
    return angulo;
}

int main() {
    double grados[] = {-45.0, -30.0, -15.0, 0.0, 15.0, 30.0, 45.0,
        60.0, 75.0, 90.0, 120.0, 150.0, 180.0,
        270.0, 360.0};

    int num_angulos = sizeof(grados) / sizeof(grados[0]);

    printf("%-10s %-18s\n"," Ángulo", "Seno del ángulo");
    printf("--------------------------\n");

    for (int i = 0; i < num_angulos; i++) {
        double radianes = grados[i] * (M_PI / 180.0);
        double radianes_norm = normalizar_angulo(radianes);

        double seno = sin(radianes);

        printf(" %-10.2f %-18.5f\n", grados[i], seno);
    }

    return EXIT_SUCCESS;
}
