# Linux

### Option 1: PPA

Run the following commands in a terminal

```bash
sudo add-apt-repository ppa:andrescv/jupiter
sudo apt-get update
sudo apt-get install jupiter
```

### Option 2: Deb Package

You need to download the debian package from [here](https://github.com/andrescv/Jupiter/releases/download/v3.1/jupiter_3.1_amd64.deb) and then run the following command in a terminal

```bash
sudo dpkg -i jupiter_3.1_amd64.deb
```

### Option 3: App Image

You need to download the app image from [here](https://github.com/andrescv/Jupiter/releases/download/v3.1/Jupiter-3.1-linux.zip) and run the following commands

```bash
unzip Jupiter-3.1-linux.zip
sudo mv image /opt/jupiter
```

### Verify Installation

To verify that you successfully install Jupiter, please run the following command in a terminal

```bash
jupiter -v
```

you should see the following output

```bash
        __          _ __         
    __ / /_ _____  (_) /____ ____
   / // / // / _ \/ / __/ -_) __/
   \___/\_,_/ .__/_/\__/\__/_/
           /_/                   

RISC-V Assembler & Runtime Simulator
               v3.1
```



