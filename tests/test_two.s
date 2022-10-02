

# moj test
.extern a
.extern b
.global c
.global d, f

.section data
.skip 5
c: .word 0x1a5b
d:
.word 12

.equ f, 15
.equ g, 0xa

.section text
program:
	ldr r0, [r1+ 0x12]
	ldr r1, [r2 + c]
	sub r0, r1
	jmp *[r1]
	jgt *[r0+ d]
    add r0, r2
    jmp %d
	halt
.end