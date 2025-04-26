# Imagen base para compilar y ejecutar un programa de lenguaje C
From gcc:latest

# Creamos el codigo fuente al directorio de trabajo
COPY main.c .

# Compilamos la aplicacion
RUN gcc main.c -o app

# Ejecutamos la aplicacion
CMD ["./app"]   
