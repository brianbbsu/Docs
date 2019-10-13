---
description: Simulador educacional de RISC-V
---

# Jupiter

[![License: GPL v3](https://camo.githubusercontent.com/bf135a9cea09d0ea4bba410582c0e70ec8222736/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4c6963656e73652d47504c25323076332d626c75652e737667) ](https://github.com/andrescv/Jupiter/blob/master/LICENSE)[![Azure Pipelines](https://camo.githubusercontent.com/3e6ec74735310767b8769af8dc70eec9c77ec490/68747470733a2f2f6465762e617a7572652e636f6d2f616e6472657363762f4a7570697465722f5f617069732f6275696c642f7374617475732f616e6472657363762e4a7570697465723f6272616e63684e616d653d6d6173746572) ](https://dev.azure.com/andrescv/Jupiter)[![Coverage](https://camo.githubusercontent.com/a4889f93e68e2b252bd1a4b3b9f3fb6a8b9ebd82/68747470733a2f2f696d672e736869656c64732e696f2f617a7572652d6465766f70732f636f7665726167652f616e6472657363762f4a7570697465722f342e737667) ](https://dev.azure.com/andrescv/Jupiter)[![Version](https://camo.githubusercontent.com/e38fdfa13696c595483430a8a5d4b63148289d46/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f72656c656173652f616e6472657363762f4a7570697465722f616c6c2e737667) ](https://github.com/andrescv/Jupiter/releases)[![](https://camo.githubusercontent.com/2e4cc3f0f602a96b633e8b168b8655a9780333f9/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f646f776e6c6f6164732f616e6472657363762f4a7570697465722f746f74616c2e737667)](https://github.com/andrescv/Jupiter/releases)[![issues](https://camo.githubusercontent.com/157860606cb742f60d6ceb0cabd043d03fe0d230/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6973737565732f616e6472657363762f4a7570697465722e737667)](https://github.com/andrescv/Jupiter/issues)

**Jupiter** es un ensamblador y simulador de RISC-V de código abierto y orientado a la educación. Está escrito en Java y  capaz de simular todo el set de instrucciones base \(extensión `I`\) más las extensiones `M` y `F`, incluyendo todas las pseudo instrucciones descritas en el manual de usuario del set de instrucciones. Fue desarrollado considerando que puede ser utilizado en varios cursos como: _Arquitectura de Computadoras_, _Compiladores_ y _Programación en Lenguaje Ensamblador_.

### **Características Principales**

* **Amigable al Usuario**: Jupiter fue diseñado enfocado en la educación y para todas las personas que están empezando a conocer la arquitectura RISC-V. Pone como prioridad la experiencia de usuario. Jupiter tiene dos modos de operación \(_Interfaz por Línea de Comandos_ e _Interfaz Gráfica_\) y ambas fueron desarrolladas para que fueran intuitivas y fácil de utilizar.
* **Modularidad**: Jupiter puede ensamblar y simular varios archivos a la vez, no todo tiene que ser un archivo de 1,000 líneas de código. Simplemente se tiene que indicar mediante una etiqueta global cuál es el punto de partida del programa. Esto permite modularidad y permite la creación fácil de proyectos y laboratorios.
* **Retroalimentación**: Las personas utilizando Jupiter obtienen retroalimentación de lo que están haciendo mal. El simulador muestra diferentes errores como: errores de sintaxis, cuando se está tratando de acceder a memoria reservada o cuando se trata de escribir a memoria de solo lectura.
* **Multiplataforma**: Jupiter está disponible para las tres plataformas más importantes incluyendo **Linux**  \(Ubuntu\), **macOS** y **Windows**. Es fácil de instalar y no se necesita instalar dependencias adicionales.

### **Capturas de Pantalla**

![Interfaz Gr&#xE1;fica de Jupiter](.gitbook/assets/gui.png)

![Interfaz por L&#xED;nea de Comandos](.gitbook/assets/cli.png)

### ¿Por qué este nombre, Jupiter?

Tradicionalmente otros simuladores de este tipo han utilizado nombres de planetas, por ejemplo el famoso simulador para la arquitectura MIPS se llama **MARS** o el simulador basado en web de la Universidad de Berkeley **Venus**. El nombre **Jupiter** fue escogido por esta tradición y también porque este planeta representa en algún sentido el número **5** \(es el quinto planeta desde el Sol y el más grande del sistema solar\), en contraste con RISC-V que es la quinta generación del set de instrucciones originalmente desarrollado en los años 90.

