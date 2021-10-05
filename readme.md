

# Two Pass Assembler
A course project for "System software". This is an implementation of a two pass assembler that converts an assembly program into machine code.

## Some important notes
* the project is compiled using g++ and tested on ubuntu
* the assembly language used is x86-like, and supports sections, directives and some instructions with various addressing modes
* the output is a file structured like an ELF object file, containing
a symbol table, relocation data and machine code

## Project structure
* inc and src folders contain the code
* tests folder contains example inputs
* docs folder contains a word document that explains how the algorithm works

## Usage
The project should be compiled using the provided makefile <br/>
Input and output files must be provided when running the assembler<br/>
The output file will be created automatically if it doesn't exist<br/>
Ex: ./assembler -o output.txt input.s