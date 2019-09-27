# Directives

Jupiter supports most common assembler directives, including some indicated [here](https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md#pseudo-ops).

## .file

Emits filename.

#### Usage

```text
.file <filename>
```

#### Example

```bash
.file "/home/ubuntu/Desktop/lab10.s"
```

#### Arguments

* `filename`: quoted filename

#### Aliases

* **none**

## .zero

Reserves the specified number of bytes.

#### **Usage**

```text
.zero <value>
```

#### Example

```python
.zero 10 # reserves 10 bytes
```

#### **Arguments**

* `value`: \(should be &gt; 0\)

#### **Aliases**

* `.space`

## .string

Stores the string and adds null terminator.

#### **Usage**

```text
.string <string>
```

#### Example

```bash
.string "hello world" 
```

#### **Arguments**

* `string`: quoted string

#### **Aliases**

* `.asciiz`, `.asciz`

## .ascii

Stores the string and does not add null terminator.

#### **Usage**

```text
.ascii <string>
```

#### Example

```bash
.ascii "Hello world"
```

#### **Arguments**

* `string`: quoted string

#### **Aliases**

* **none**

## .byte

Store the listed value\(s\) as 8 bit bytes.

#### **Usage**

```text
.byte <list>
```

#### Example

```python
.byte 10, 50
.byte 2
```

#### **Arguments**

* `list`: 8-bit comma separated bytes

#### **Aliases**

* **none**

## .half

Store the listed value\(s\) as 16-bit half words.

#### **Usage**

```text
.half <list>
```

#### Example

```python
.half 1, 2, 3
.half 10
```

#### **Arguments**

* `list`: 16-bit comma separated half words

#### **Aliases**

* `.short`, `.2byte`

## .word

Store the listed value\(s\)/symbol\(s\) as 32 bit words.

#### **Usage**

```text
.word <list>
```

#### Example

```go
.word 1, 3, 5, 7
.word 0xcafe
```

#### **Arguments**

* `list`: 32-bit comma separated words or comma separated symbols

#### **Aliases**

* `.long`, `.4byte`

## .float

Store the listed value\(s\) as 32 bit float values.

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

* `list`: 32-bit comma separated float words

#### **Aliases**

* **none**

## .align

Align next data item to a power of 2 byte boundary.

#### **Usage**

```text
.align <alignval>
```

#### Example

```python
.align 2 # 2 ^ 2 = 4 (word align)
```

#### **Arguments**

* `alignval`: integer, should be &gt;= 0

#### **Aliases**

* `.palign`

## .balign

Align next data item to a byte boundary.

#### **Usage**

```text
.balign <alignval>
```

#### Example

```python
.balign 4 # 4 bytes (word align)
```

#### **Arguments**

* `alignval`: integer, should be &gt; 0

#### **Aliases**

* **none**

## .globl

Store the symbol in the **global** symbol table.

#### **Usage**

```text
.globl <symbol>
```

#### Example

```python
.globl foo
```

#### **Arguments**

* `symbol`: symbol to store in global symbol table

#### **Aliases**

* `.global`

## .section

Emits the specified section and makes it the current section.

#### **Usage**

```text
.section <section>
```

#### Example

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

#### **Arguments**

* `section`: {`.text`, `.data`, `.rodata`, `.bss`}

#### **Aliases**

* **none**

## .data

Emits data section and makes it the current section.

#### **Usage**

```text
.data
```

#### Example

```python
.data
    msg: .string "hello"
```

#### **Arguments**

* **none**

#### **Aliases**

* **none**

## .text

Emits text section and makes it the current section.

#### **Usage**

```text
.text
```

#### Example

```python
.text
    li a0, 10
    ecall
```

#### **Arguments**

* **none**

#### **Aliases**

* **none**

## .rodata

Emits read-only data section and makes it the current section.

#### **Usage**

```text
.rodata
```

#### Example

```python
.rodata
    msg: .string "hello"
```

#### **Arguments**

* **none**

#### **Aliases**

* **none**

## .bss

Emits bss section and makes it the current section.

#### **Usage**

```text
.bss
```

#### Example

```python
.bss
    array: .zero 40
```

#### **Arguments**

* **none**

#### **Aliases**

* **none**

