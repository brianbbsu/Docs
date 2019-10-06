# Docker Image

## Docker Installation

You need to install Docker first, please follow the installation guide in the link below.

{% embed url="https://docs.docker.com/install/" caption="https://docs.docker.com/install/" %}

## Using Jupiter with Docker

Assuming that you are in some directory,  **~/Desktop** for example, and inside that directory you have one file called **fibonacci.s**, you can use the following command to simulate that RISC-V assembly program:

```bash
docker run -it --rm -v $PWD:/riscv -w /riscv andrescv/jupiter fibonacci.s
```

Alternatively, you can specify the version of  the Jupiter simulator by using a docker tag:

```bash
# use v3.1
docker run -it --rm -v $PWD:/riscv -w /riscv andrescv/jupiter:3.1 fibonacci.s
```

Visit the link below to see available tags

{% embed url="https://hub.docker.com/r/andrescv/jupiter" caption="https://hub.docker.com/r/andrescv/jupiter" %}



