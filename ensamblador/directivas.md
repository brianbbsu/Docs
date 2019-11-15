# Directivas

Jupiter soporta las directivas de ensamblador más comunes, incluyendo la mayor parte de directivas listadas en el [manual](https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md#pseudo-ops) de ensamblador de RISC-V.

## .file

Guarda el nombre del archivo en la tabla de símbolos local.

#### Uso

```text
.file <filename>
```

#### Ejemplo

```bash
.file "/home/ubuntu/Desktop/fibo.s"
```

#### Argumentos

* `filename`: ruta del archivo entre comillas

#### Alias

* **ninguno**

## .zero

Reserva la cantidad especificada de bytes en el segmento de datos actual. Esta directiva solo puede ser utilizada en los segmentos `.data` y `.bss`.

#### **Uso**

```text
.zero <value>
```

#### Ejemplo

```python
.zero 10 # reserva 10 bytes
```

#### **Argumentos**

* `value`: un entero \(debería ser &gt; 0\)

#### **Alias**

* `.space`

## .string

Guarda un string agregando un caracter nulo \(`\0`\) al final.

#### **Uso**

```text
.string <string>
```

#### Ejemplo

```bash
.string "hola mundo" 
```

#### **Argumentos**

* `string`: string entre comillas

#### **Alias**

* `.asciiz`, `.asciz`

## .ascii

Guarda un string _**sin**_ agregar un caracter nulo \(`\0`\) al final.

#### **Uso**

```text
.ascii <string>
```

#### Ejemplo

```bash
.ascii "Hola mundo"
```

#### **Argumentos**

* `string`: string entre comillas

#### **Alias**

* **ninguno**

## .byte

Guarda los valores listados como bytes \(8 bits\).

#### **Uso**

```text
.byte <list>
```

#### Ejemplo

```python
.byte 10, 50
.byte 2
```

#### **Argumentos**

* `list`: bytes \(8 bits\) separados por coma

#### **Alias**

* **ninguno**

## .half

Guarda los valores listados como halfs \(16 bits\).

#### **Uso**

```text
.half <list>
```

#### Ejemplo

```python
.half 1, 2, 3
.half 10
```

#### **Argumentos**

* `list`: halfs \(16 bits\) separados por coma

#### **Alias**

* `.short`, `.2byte`

## .word

Guarda los valores listados como palabras \(32 bits\).

#### **Uso**

```text
.word <list>
```

#### Ejemplo

```python
.word 1, 3, 5, 7
.word 0xcafe
.word foo # guarda la direccion de la etiqueta foo
          # la direccion es de 32 bits (una palabra)

foo:
    ...
```

#### **Argumentos**

* `list`: palabras o etiquetas separadas por coma 

#### **Alias**

* `.long`, `.4byte`

## .float

Guarda los valores listados como valores de punto flotante de 32 bits.

#### **Usage**

```text
.float <list>
```

#### Example

```go
.float 1e-4, 1.2, 0.005
.float 3.1416
```

#### **Arguments**

* `list`: valores de punto flotante \(32 bits\) separados por coma

#### **Alias**

* **ninguno**

## .align

Alinea el siguiente elemento de datos a un límite de una potencia de 2 bytes.

#### **Uso**

```text
.align <alignval>
```

#### Ejemplo

```python
.align 0 # 2 ^ 0 = 1 (byte align = 1 byte)
.align 1 # 2 ^ 1 = 2 (half align = 2 bytes)
.align 2 # 2 ^ 2 = 4 (word align = 4 bytes) 
```

#### **Argumentos**

* `alignval`: número entero \(debería ser &gt;= 0\)

#### **Alias**

* `.palign`

## .balign

Alinea el siguiente elemento de datos a un limite en bytes.

#### **Uso**

```text
.balign <alignval>
```

#### Ejemplo

```python
.balign 4 # 4 bytes (word align)
```

#### **Argumentos**

* `alignval`: número entero \(debería ser &gt; 0\)

#### **Alias**

* **ninguno**

## .globl

Guarda el símbolo especificado en la tabla de símbolos **global**.

#### **Uso**

```text
.globl <symbol>
```

#### Ejemplo

```python
.globl foo

foo:
 ...
```

#### **Argumentos**

* `symbol`: símbolo a guardar en la tabla de símbolos global

#### **Alias**

* `.global`

## .section

Emite la sección especificada y se vuelve la sección actual.

#### **Uso**

```text
.section <section>
```

#### Ejemplo

```python
.section .text
    li a0, 10
.section .data
    msg: .string "hello"
.section .rodata
    num: .word 10 
.section .bss
    array: .zero 40
```

#### **Argumentos**

* `section`: solo puede ser {`.text`, `.data`, `.rodata`, `.bss`}

#### **Alias**

* **none**

## .data

Emite la sección  `data` y se vuelve la sección actual.

#### **Uso**

```text
.data
```

#### Ejemplo

```python
.data
    msg: .string "hello"
```

#### **Argumentos**

* **ninguno**

#### **Alias**

* **ninguno**

## .text

Emite la sección `text` y se vuelve la sección actual.

#### **Uso**

```text
.text
```

#### Ejemplo

```python
.text
    li a0, 10
    ecall
```

#### **Argumentos**

* **ninguno**

#### **Aliases**

* **ninguno**

## .rodata

Emite la sección `rodata` \(solo lectura\) y se vuelve la sección actual.

#### **Uso**

```text
.rodata
```

#### Ejemplo

```python
.rodata
    msg: .string "hello"
```

#### **Argumentos**

* **ninguno**

#### **Alias**

* **ninguno**

## .bss

Emite la sección `bss` y se vuelve la sección actual.

#### **Uso**

```text
.bss
```

#### Ejemplo

```python
.bss
    array: .zero 40
```

#### **Argumentos**

* **ninguno**

#### **Alias**

* **ninguno**
