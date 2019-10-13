---
description: Personal Package Archive
---

# Opción 1: PPA

## Instalación

Esta es la manera más fácil de instalar la última versión de Jupiter, utilizando un PPA \(_Personal Package Archive_\), simplemente tiene que ejecutar lo siguiente en una terminal:

```bash
sudo add-apt-repository ppa:andrescv/jupiter
sudo apt-get update
sudo apt-get install jupiter
```

Estos comandos instalarán el simulador en **/opt/jupiter**. Para verificar que la instalación se haya efectuado correctamente pruebe lo siguiente en una terminal:

```bash
jupiter -v
```

Debería de ver la siguiente salida:

```bash
        __          _ __         
    __ / /_ _____  (_) /____ ____
   / // / // / _ \/ / __/ -_) __/
   \___/\_,_/ .__/_/\__/\__/_/
           /_/                   

RISC-V Assembler & Runtime Simulator
               v3.1
```

## Desinstalación

Para desinstalar en algún futuro Jupiter, simplemente tiene que hacer lo siguiente en una terminal:

```bash
sudo apt-get purge jupiter
```

Luego de utilizar este comando el simulador quedará completamente desinstalado de su computadora.

Adicionalmente puede eliminar el PPA utilizando el siguiente comando:

```bash
sudo add-apt-repository --remove ppa:andrescv/jupiter
```

## Actualizaciones

Puede actualizar el simulador a una versión más reciente utilizando los siguientes comandos:

```bash
sudo apt-get update && sudo apt-get upgrade
```

{% hint style="info" %}
El simulador se actualizará únicamente si existen actualizaciones disponibles.
{% endhint %}



