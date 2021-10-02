

.global lab_a
.global lab_b
.global fja

.extern a, b

.equ c, 0x12
.equ d, 25

.section data
.skip 5
lab_a: .word 0x1AB
lab_b: .skip 5

.section text
pop r1
pop r2
push r3
pop r4
fja:
    ldr r0, lab_a
    ldr r1, lab_b
    ldr r2, 0x65
    sub r1, r0
    str r0, [r2]
    jmp %lab_b
    ldr r4, [r0+0x7]
uslov:
    push r0
    push r1

    call lab_b

    jeq *[r5 + lab_a]
    jeq *[r1]
    jne *[r1 +0x12]
    jne *[r1 + 20]
    halt
.end
