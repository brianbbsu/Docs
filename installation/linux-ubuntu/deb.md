---
description: Debian Package
---

# Opción 2: deb package

## Instalación

En esta opción usted instalara Jupiter utilizando un _Debian Package_. Tiene que descargar el siguiente archivo:

{% embed url="https://git.io/Je8kH" caption="jupiter\_3.1\_amd64.deb" %}

Luego en una terminal diríjase al directorio en donde descargó el archivo y utilice los siguientes comandos:

```bash
sudo dpkg -i jupiter_3.1_amd64.deb
```

Este comando instalará el simulador en **/opt/jupiter**. Para verificar que la instalación se haya efectuado correctamente pruebe lo siguiente en una terminal:

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

Para desinstalarlo en algún futuro simplemente tiene que hacer lo siguiente en una terminal:

```bash
sudo apt-get purge jupiter
```

Luego de utilizar este comando el simulador quedará completamente desinstalado de su computadora.

## Actualizaciones

Cada vez que haya una actualización del simulador y este sea su método de instalación, por favor revise esta página para descargar el archivo más reciente e instalarlo utilizando las mismas instrucciones.



