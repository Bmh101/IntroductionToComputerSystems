.global main

.data

a: .word 10
b: .word 20
c: .word 30

.text

main:
    push {ip, lr}

    ldr r0, =a
    ldr r0, [r0]

    ldr r1, =b
    ldr r1, [r1]

    ldr r2, =c
    ldr r2, [r2]

    add r0, r0, r1
    add r0, r0, r2

    pop {ip, pc}

