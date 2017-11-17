.global main

.data
    fib: .word 1
    prev: .word 0

.text

main:

    push {ip, lr}

    //r3 N
    //r4 SUM

    mov r3, #1
    mov r4, #0

    while:

	cmp r3, #9
	bgt done

	ldr r0, =fib
	ldr r0, [r0]

	ldr r1, =prev
	ldr r1, [r1]

	add r4, r0, r1

	ldr r1, =prev
	str r0, [r1]

	ldr r0, =fib
	str r4, [r0]

	add r3, r3, #1

	b while

    done:

	ldr r0, =fib
	ldr r0, [r0]

    pop {ip, pc}
