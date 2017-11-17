.global main

.data

   a: .word 4
   b: .word 30

.text

main:

    push {ip, lr}

    //r3 REMAINDER
    //r4 DIVISOR

    ldr r0, =a
    ldr r0,[r0]

    ldr r1, =b
    ldr r1, [r1]

    mov r3, r0
    mov r4, r1

    while:
	cmp r3, r4
	blt done

	sub r3, r3, r4

	b while

    done:
	mov r0, r3

    pop {ip, pc}
