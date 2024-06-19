# c_lox_interpreter

Lox is a scripting language written for learning purposes, this version of the interpreter is written in c and so can be compiled for any machine that has installed a c compiler.
Amenities are provided using make so it's good to have installed make too.

## Installation

After installing dependencies listed above you can:

- Use `make` to compile the interpreter
- Use `make run` to enter in REPL mode and write lines of Lox.
- Use `make run {filename}` to execute a lox file.
- Use `make clean` to delete all the .o and .exe files produced by the `make` command.

## Options

To toggle logging from the interpreter you just need to comment out in common.h these lines:

```#ifndef clox_common_h
#define clox_common_h

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// #define DEBUG_PRINT_CODE
// #define DEBUG_TRACE_EXECUTION

// #define DEBUG_STRESS_GC
// #define DEBUG_LOG_GC

#define UINT8_COUNT (UINT8_MAX + 1)

#endif
```

Then recompile the program with make or using the base gcc compiler and enjoy!

## Syntax rules

To write programs in Lox you should follow the rules stated by the creator at this ![link](https://www.craftinginterpreters.com/appendix-i.html)
