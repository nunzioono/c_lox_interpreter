# c_lox_interpreter

Lox is a scripting language written for learning purposes, this version of the interpreter is written in c and so can be compiled for any machine that has installed a c compiler.
Amenities are provided using cmake so it's good to have installed cmake too.

## Installation

After installing dependencies listed above you can:

- Use `make` to compile the interpreter
- Use `make run` to enter in REPL mode and write lines of Lox.
- Use `make run {filename}` to execute a lox file.
- Use `make clean` to delete all the .o and .exe files produced by the `make` command.
