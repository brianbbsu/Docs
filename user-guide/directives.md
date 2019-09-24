# Directives

Jupiter supports most common assembler directives, including some indicated [here](https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md#pseudo-ops).

## .file

Emits filename.

#### Usage

```text
.file <filename>
```

#### Arguments

* `filename`: filename

#### Aliases

* **none**

## .zero

Reserves the specified number of bytes.

#### **Usage**

```text
.zero <value>
```

#### **Arguments**

* `value`: \(should be &gt; 0\)

#### **Aliases**

* `.space`

## .string

Stores the string and add null terminator.

#### **Usage**

```text
.string <string>
```

#### **Arguments**

* `string`: quoted string

#### **Aliases**

* `.asciiz`, `.asciz`

## .ascii

Stores the string and do not add null terminator.

#### **Usage**

```text
.ascii <string>
```

#### **Arguments**

* `string`: quoted string

#### **Aliases**

* `.asciiz`, `.asciz`

## .byte

Store the listed value\(s\) as 8 bit bytes.

#### **Usage**

```text
.byte value [, value]*
```

#### **Arguments**

* `list`: 8-bit comma separated bytes

#### **Aliases**

* **none**

## .half

Store the listed value\(s\) as 16-bit half words.

#### **Usage**

```text
.half value [, value]*
```

#### **Arguments**

* `list`: 16-bit comma separated half words

#### **Aliases**

* `.short`, `.2byte`

## .word

Store the listed value\(s\) as 32 bit words.

#### **Usage**

```text
.word value [, value]*
```

#### **Arguments**

* `list`: 32-bit comma separated words

#### **Aliases**

* `.long`, `.4byte`

## .float

Store the listed value\(s\) as 32 bit float values.

#### **Usage**

```text
.float value [, value]*
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

#### **Arguments**

* `alignval`: {0=byte, 1=half, 2=word}

#### **Aliases**

* `.palign`

## .balign

Align next data item to a byte boundary.

#### **Usage**

```text
.balign <alignval>
```

#### **Arguments**

* `alignval`: \(should be &gt; 0\)

#### **Aliases**

* **none**

## .globl

Store the listed symbol\(s\) in the **global** symbol table.

#### **Usage**

```text
.globl symbol [, symbol]*
```

#### **Arguments**

* `list`: comma separated symbols

#### **Aliases**

* `.global`

## .section

Emits the specified section and makes it the current section.

#### **Usage**

```text
.section <section>
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

#### **Arguments**

* **none**

#### **Aliases**

* **none**

