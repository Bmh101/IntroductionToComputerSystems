.global main

.data

    a: .word 60
    b: .word 25

.text

main:

    push {ip, lr}

    ldr r0, =a
    ldr r0, [r0]

    ldr r1, =b
    ldr r1, [r1]

    while:

	cmp r0, r1
	beq done

	ble else

	if:
	    sub r0, r0, r1

	    b continue

	else:
	    sub r1, r1, r0

	continue:
	    b while

    done:

    pop {ip, pc}
