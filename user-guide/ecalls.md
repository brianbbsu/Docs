# Ecalls

Jupiter currently supports a total of **25** environment calls through `ecall` instruction. To use an environment call, load the ecall **code** into register `a0` and load any arguments into `a1` - `a7` or `fa0`-`fa7` \(floating-point\) registers.

## Print Int

Prints integer in register `a1`.

**Example**

```python
.globl __start

.text

__start:
  li a0, 1   # ecall code
  li a1, 0xa # integer to print
  ecall
```

**Ecall Code**

* `a0` = 1

**Arguments**

* `a1` = integer to print

## Print Float

Prints float in register `fa0`.

**Example**

```python
.globl __start

.rodata

  PI: .float 3.1416

.text

__start:
  li a0, 2        # ecall code
  la t0, PI
  flw fa0, 0(t0)  # float to print
  ecall
```

**Ecall Code**

* `a0` = 2

**Arguments**

* `fa0` = float to print

## Print String

Prints null-terminated string whose address is in register `a1`.

**Example**

```python
.globl __start

.rodata

  msg: .asciiz "Hello World!!!"

.text

__start:
  li a0, 4   # ecall code
  la a1, msg # string to print
  ecall
```

**Ecall Code**

* `a0` = 4

**Arguments**

* `a1` = null-terminated string address

## Read Int

Reads an integer from `stdin` and stores the result in register `a0`.

**Example**

```python
.globl __start

.text

__start:
  li a0, 5 # ecall code
  ecall
```

**Ecall Code**

* `a0` = 5

**Arguments**

* **none**

## Read Float

Reads a float from `stdin` and stores the result in register `fa0`.

**Example**

```python
.globl __start

.text

__start:
  li a0, 6 # ecall code
  ecall
```

**Ecall Code**

* `a0` = 6

**Arguments**

* **none**

## Read String

It reads up to `length - 1` characters into a buffer whose address is in `a1` and terminates the string with a `null` byte. Buffer size has to be at least `length` bytes.

**Example**

```python
.globl __start

.data
  string: .zero 256 # buffer with len = 256

.text

__start:
  li a0, 8      # ecall code
  la a1, string # buffer address
  li a2, 256    # length
  ecall
```

**Ecall Code**

* `a0` = 8

**Arguments**

* `a1` = buffer address
* `a2` = buffer length

## Sbrk

Stores a pointer to a block of memory containing `n` additional bytes in register `a0`. This pointer is word aligned.

**Example**

```python
.globl __start

.text

__start:
  li a0, 9   # ecall code
  li a1, 100 # number of bytes
  ecall
```

**Ecall Code**

* `a0` = 9

**Arguments**

* `a1` = number of bytes to reserve

## Exit

Stops a program from running.

**Example**

```python
.globl __start

.text

__start:
  li a0, 10 # ecall code
  ecall
```

**Ecall Code**

* `a0` = 10

**Arguments**

* **none**

## Print Char

Prints a character whose ascii code is in register `a1`.

**Example**

```python
.globl __start

.text

__start:
  li a0, 11  # ecall code
  li a1, 'a' # character to print
  ecall
```

**Ecall Code**

* `a0` = 11

**Arguments**

* `a1` = ascii code to print

## Read Char

Reads a character from `stdin` and stores the ascii code in register `a0`.

**Example**

```python
.globl __start

.text

__start:
  li a0, 12 # ecall code
  ecall
```

**Ecall Code**

* `a0` = 12

**Arguments**

* **none**

## Open

Opens a new file and obtains its file descriptor. Stores the file descriptor for the new file in register `a0`. The file descriptor returned is always the smallest integer greater than zero that is still available. If a negative value is returned, then there was an error opening the file. Maximum number of open files: **32**.

**Example**

```python
.globl __start

.rodata
  # open flags
  O_RDWR:  .word 0b0000100
  O_CREAT: .word 0b0100000
  O_EXCL:  .word 0b1000000
  # pathname
  path: "example.txt"

.text

__start:
  li a0, 13      # ecall code
  la a1, path    # pathname address
  lw a2, O_RDWR  # load O_RDWR open flag
  lw t0, O_CREAT # load O_CREAT open flag
  lw t1, O_EXCL  # load O_EXCL open flag
  or a2, a2, t0  # set a2 = O_RDWR | O_CREAT
  or a2, a2, t1  # set a2 = O_RDWR | O_CREAT | O_EXCL
  ecall
```

**Ecall Code**

* `a0` = 13

**Arguments**

* `a1` = pathname address
* `a2` = open flags

**Open Flags**

| Name | Code | Description |
| :--- | :--- | :--- |
| O\_RDONLY | `0b0000001` | Open the file so that it is read only |
| O\_WRONLY | `0b0000010` | Open the file so that it is write only |
| O\_RDWR | `0b0000100` | Open the file so that it can be read from and written to |
| O\_APPEND | `0b0001000` | Append new information to the end of the file |
| O\_TRUNC | `0b0010000` | Initially clear all data from the file |
| O\_CREAT | `0b0100000` | If the file does not exist, create it |
| O\_EXCL | `0b1000000` | Combined with the O\_CREAT option, it ensures that the caller must create the file. If file already exists, the call will fail |

## Read

Reads data into a buffer whose address is in register `a2`. Stores the number of bytes that were read in register `a0`. If value is negative, then an error occurred. The buffer size should be greater or equal to the number bytes to read.

**Example**

```javascript
.globl __start

.data
  read: .zero 1024

.text

__start:
  li a0, 14   # ecall code
  li a1, 1    # file descriptor
  la a2, read # buffer address
  li a3, 10   # number of bytes to read
  ecall
```

**Ecall Code**

* `a0` = 14

**Arguments**

* `a1` = file descriptor
* `a2` = buffer address
* `a3` = number of bytes to read

## Write

Writes data out of a buffer whose address is in register `a2`. Stores the number of bytes that were written in register `a0`. If value is negative, then an error occurred.

**Example**

```python
.globl main

.data
  write: .asciiz "Hello World"

.text

main:
  li a0, 15    # ecall code
  li a1, 1     # file descriptor
  la a2, write # buffer address
  li a3, 12    # number of bytes to write
  ecall
```

**Ecall Code**

* `a0` = 15

**Arguments**

* `a1` = file descriptor
* `a2` = buffer address
* `a3` = number of bytes to write

## Close

Close an open file descriptor. Stores a 0 upon success in register `a0`, and a -1 upon failure.

**Example**

```python
.globl __start

.text

__start:
  li a0, 16 # ecall code
  li a1, 1  # file descriptor
  ecall
```

**Ecall Code**

* `a0` = 16

**Arguments**

* `a1` = file descriptor

## Exit2

Stops the program from running and takes an argument, which is the value that Jupiter uses in its call on exit.

**Example**

```python
.globl __start

.text

__start:
  li a0, 17 # ecall code
  li a1, 1  # status code value
  ecall
```

**Ecall Code**

* `a0` = 17

**Arguments**

* `a1` = exit status code

## Lseek

Changes the location of the read/write pointer of a file descriptor. The location can be set either in absolute or relative terms.

**Example**

```python
.globl __start


__start:
  li a0, 10
  ecall
```

**Ecall Code**

* `a0` = 18

**Arguments**

* `a1` = file descriptor
* `a2` = offset of the pointer \(measured in bytes\)
* `a3` = method in which the offset is to be interpreted \(relative, absolute, etc.\).

| Name | Code | Description |
| :--- | :--- | :--- |
| SEEK\_SET | `0x1` | Offset is to be measured in absolute terms |
| SEEK\_CUR | `0x2` | Offset is to be measured relative to the current location of the pointer |
| SEEK\_END | `0x3` | Offset is to be measured relative to the end of the file |

## Sleep

Causes the Jupiter Java thread to sleep for \(at least\) the specified number of milliseconds in register `a1`. This timing will not be precise, as the Java implementation will add some overhead.

**Example**

```python
.globl __start

.text

__start:
  li a0, 19    # ecall code
  li a1, 1000  # sleep for 1 second
  ecall
```

**Ecall Code**

* `a0` = 19

**Arguments**

* `a1` = number of milliseconds

## CWD

Stores the current working directory in a buffer whose address is in register `a1`.

**Example**

```python
.globl __start

.data

  cwd: .zero 1024

.text

__start:
  li a0, 20  # ecall code
  la a1, cwd # buffer address
  ecall
```

**Ecall Code**

* `a0` = 20

**Arguments**

* `a1` = buffer address

## Time

Stores the system time. `a0` contains the low order 32 bits of system time and `a1` high order 32 bits of system time.

**Example**

```python
.globl __start

.text

__start:
  li a0, 21 # ecall code
  ecall
```

**Ecall Code**

* `a0` = 21

**Arguments**

* **none**

## Print Hex

Prints integer in register `a1` in hex representation. Displayed value is 8 hexadecimal digits, left-padding with zeroes if necessary.

**Example**

```python
.globl __start

.text

__start:
  li a0, 22  # ecall code
  li a1, 0xa # integer to print in hex
  ecall
```

**Ecall Code**

* `a0` = 22

**Arguments**

* `a1` = integer to print

## Print Binary

Prints integer in register `a1` in binary representation. Displayed value is 32 binary digits, left-padding with zeroes if necessary.

**Example**

```python
.globl __start

.text

__start:
  li a0, 23  # ecall code
  li a1, 0xa # integer to print in binary
  ecall
```

**Ecall Code**

* `a0` = 23

**Arguments**

* `a1` = integer to print

## Print Unsigned

Prints integer in register `a1` as a 32-bit unsigned value. 

**Example**

```python
.globl __start

.text

__start:
  li a0, 23  # ecall code
  li a1, 0xa # integer to print (unsigned)
  ecall
```

**Ecall Code**

* `a0` = 23

**Arguments**

* `a1` = integer to print

## Set Seed

Sets the seed of the corresponding underlying Java pseudo-random number generator.

**Example**

```python
.globl __start

.text

__start:
  li a0, 25  # ecall code
  li a1, 123 # seed value
  ecall
```

**Ecall Code**

* `a0` = 25

**Arguments**

* `a1` = seed

## Random Int

Stores the next pseudorandom, uniformly distributed, int value from the random number generator's sequence, in register `a0`.

**Example**

```python
.globl __start

.text

__start:
  li a0, 26  # ecall code
  ecall
```

**Ecall Code**

* `a0` = 26

**Arguments**

* **none**

## Random Int Range

Stores the next pseudorandom, uniformly distributed, int value from the random number generator's sequence, in register `a0`. The next pseudorandom value will be in \[`a1`, `a2`\] range.

**Example**

```python
.globl __start

.text

__start:
  li a0, 27  # ecall code
  li a1, 10  # lower bound
  li a2, 100 # upper bound
  ecall
```

**Ecall Code**

* `a0` = 27

**Arguments**

* `a1` = lower bound of range
* `a2` = upper bound of range

## Random Float

Stores the next pseudorandom, uniformly distributed, float value in the range \[0.0, 1.0\] from the random number generator's sequence, in register `a0`.

**Example**

```text
.globl __start

.text

__start:
  li a0, 28 # ecall code
  ecall
```

**Ecall Code**

* `a0` = 28

**Arguments**

* **none**

