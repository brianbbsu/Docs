---
description: Compilar Código Fuente
---

# Opción 4: Compilar

## Instalación

Para compilar Jupiter se necesita tener instalado **Java 11**, si no lo tiene instalado en su computadora utilice el siguiente enlace para descargarlo e instalarlo:

{% embed url="https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html" caption="Instalación Java 11" %}

{% hint style="warning" %}
Necesitará una cuenta de Oracle para poder descargar el JDK. Puede optar también por instalar una versión **open source** de Java como **OpenJDK**.
{% endhint %}

Verifique que tenga instalado Java 11 y no otra versión utilizando el siguiente comando en una terminal:

```bash
java -version
```

El cual producirá una salida parecida a la siguiente:

```bash
java version "11.0.4" 2019-07-16 LTS
Java(TM) SE Runtime Environment 18.9 (build 11.0.4+10-LTS)
Java HotSpot(TM) 64-Bit Server VM 18.9 (build 11.0.4+10-LTS, mixed mode)
```

Para comprobar que el compilador de java \(**javac**\) también sea la versión correcta ejecute:

```bash
javac -version
```

Y verifique que la salida sea parecida a la siguiente:

```bash
javac 11.0.4
```

Cuando ya tenga instalado Java 11, clone el repositorio de Jupiter utilizando los siguientes comandos en una terminal:

```bash
git clone https://github.com/andrescv/Jupiter.git
cd Jupiter
git checkout v3.1
```

Para crear la imagen de la aplicación utilice el siguiente comando:

```bash
./gradlew build jlink
```

{% hint style="warning" %}
Puede tomar algunos minutos ejecutar el comando anterior.
{% endhint %}

Luega ejecute los siguientes comandos para instalar Jupiter:

```bash
sudo rm -rf /opt/jupiter
sudo rm -f /usr/bin/jupiter
sudo mv build/image /opt/jupiter
sudo mv src/deb/files/usr/bin/jupiter /usr/bin/
sudo chmod +x /usr/bin/jupiter
```

{% hint style="warning" %}
Necesitará permisos de super usuario para ejecutar los comandos anteriores.
{% endhint %}

Finalmente, para verificar que la instalación se haya efectuado correctamente pruebe lo siguiente en una terminal:

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

Cada vez que haya una actualización del simulador y este sea su método de instalación, por favor revise esta página para compilar la versión más reciente e instalarla utilizando las mismas instrucciones.

