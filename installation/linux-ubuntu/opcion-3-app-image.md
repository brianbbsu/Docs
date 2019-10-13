---
description: Imagen de la Aplicación
---

# Opción 3: App Image

## Instalación

Para instalar Jupiter, por favor descargue la imagen de la aplicación y el script de ejecución utilizando los siguientes enlaces:

{% embed url="https://git.io/Je8kd" caption="Jupiter-3.1-linux.zip \(imagen\)" %}

{% file src="../../.gitbook/assets/jupiter.sh" caption="jupiter \(script de ejecución\)" %}

Abra una terminal y ejecute los siguientes comandos \(asumiendo que los archivos se descargaron en **~/Downloads**\):

```bash
unzip Jupiter-3.1-linux.zip
sudo rm -rf /opt/jupiter
sudo rm -f /usr/bin/jupiter
sudo mv image /opt/jupiter
sudo mv jupiter.sh /usr/bin/jupiter
sudo chmod +x /usr/bin/jupiter
```

{% hint style="warning" %}
Necesitará permisos de super usuario para ejecutar los comandos anteriores.
{% endhint %}

{% hint style="info" %}
Necesitará tener instalado el programa `unzip`. Si no lo tiene instalado en su computadora, por favor ejecute lo siguiente en una terminal:

```bash
sudo apt-get install unzip
```
{% endhint %}

Para verificar que la instalación se haya efectuado correctamente pruebe lo siguiente en una terminal:

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
sudo rm -rf /opt/jupiter
sudo rm -f /usr/bin/jupiter
```

Luego de utilizar estos comandos el simulador quedará completamente desinstalado de su computadora.

## Actualizaciones

Cada vez que haya una actualización del simulador y este sea su método de instalación, por favor revise esta página para descargar el archivo más reciente e instalarlo utilizando las mismas instrucciones.

