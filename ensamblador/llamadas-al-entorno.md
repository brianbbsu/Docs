# Llamadas al Entorno

## Print Int

Imprime un entero que está en el registro `a1`.

#### Código Ecall

* `a0` = 1

#### Argumentos

* `a1` = un entero

#### Ejemplo

```text
.globl __start

.text

__start:
    li a0, 1    # codigo ecall
    li a2, 10   # entero a imprimir
    ecall
```

## Print Float

## Print String

## Read Int

## Read Float

## Read String

## Sbrk

## Exit

## Print Char

## Read Char

## Open

## Read

## Write

## Close

## Exit2

## Lseek

## Sleep

## CWD

## Time

## Print Hex

## Print Binary

## Print Unsigned

## Set Seed

## Rand Int

## Rand Int Range



