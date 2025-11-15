# Assembly

Simple x86-64 Assembly Hello World example (Linux).

## Compile and Run
```bash
nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello
./hello
```

