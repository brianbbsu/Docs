---
description: Debian Package
---

# Opción 2: deb package

En esta opción usted instalara Jupiter utilizando un _Debian Package_. Tiene que descargar el siguiente archivo:

{% embed url="https://github.com/andrescv/Jupiter/releases/download/v3.1/jupiter\_3.1\_amd64.deb" %}

Luego en una terminal diríjase al directorio en donde descargó el archivo y utilice los siguientes comandos:

```bash
sudo dpkg -i jupiter_3.1_amd64.deb
```

Este comando instalará el simulador en **/opt/jupiter**, para desinstalarlo en algún futuro simplemente tiene que hacer lo siguiente en una terminal:

```bash
sudo apt-get purge jupiter
```

Cada vez que haya una actualización de la aplicación y este sea su método de instalación por favor revise esta página para descargar el archivo correspondiente.



