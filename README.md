---
description: Simulador educacional de RISC-V
---

# Jupiter

![](.gitbook/assets/jupiter%20%282%29.png)

**Jupiter** es un ensamblador y simulador de RISC-V de código abierto y orientado a la educación. Está escrito en Java y es capaz de simular todo el set de instrucciones base \(la extensión `I`\) más las extensiones `F` y `M`, incluyendo todas las pseudo instrucciones descritas en el manual de usuario del set de instrucciones. Fue desarrollado tomando en cuenta que puede ser utilizado en varios cursos como: _Arquitectura de Computadoras_, _Compiladores_ y _Programación en Lenguaje Ensamblador_.

### **Características Principales**

* **Amigable al Usuario**: Jupiter fue diseñado enfocado en la educación y para todas las personas que están empezando a conocer la arquitectura RISC-V. Pone como prioridad la experiencia de usuario. Jupiter tiene dos modos de operación \(_Interfaz por Linea de Comandos_ e _Interfaz Gráfica_\) y ambas fueron desarrolladas para que fueran intuitivas y fácil de utilizar.
* **Modularidad**: Jupiter puede ensamblar y simular varios archivos a la vez, no todo tiene que ser un archivo de 1,000 líneas de código. Simplemente se tiene queq indicar mediante una etiqueta global cuál es el punto de partida del programa. Esto permite modularidad y permite la creación fácil de proyectos y laboratorios.
* **Retroalimentación**: Las personas utilizando Jupiter obtienen retroalimentación de lo que están haciendo mal. El simulador muestra diferentes errores como: errores de sintaxis, cuando se está tratando de acceder a memoria reservada o cuando se trata de escribir a memoria de solo lectura.
* **Multiplataforma**: Jupiter está disponible para las tres plataformas más importantes incluyendo **Linux**  \(Ubuntu\), **macOS** y **Windows**. Es fácil de instalar y no se necesita instalar dependencias adicionales.

### **Capturas de Pantalla**

![Interfaz Gr&#xE1;fica de Jupiter](.gitbook/assets/gui.png)

![Interfaz por Linea de Comandos](.gitbook/assets/cli.png)

### ¿Por qué este nombre, Jupiter?

Tradicionalmente otros simuladores de este tipo han utilizado nombres de planeta, por ejemplo el famoso simulador para la arquitectura MIPS se llama **MARS** o el simulador basado en web de la Universidad de Berkeley **Venus**. El nombre **Jupiter** fue escogido por esta tradición y también porque este planeta representa en algún sentido el número **5** \(es el quinto planeta desde el Sol y el más grande del sistema solar\), en contraste con RISC-V que es la quinta generación del set de instrucciones originalmente desarrollado en los años 90.

