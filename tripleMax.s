.global main

.data

    x: .word 10
    y: .word 5
    z: .word 20
    max: .word 0

.text

main:
    push {ip, lr}

    ldr r0, =x
    ldr r0, [r0]
    ldr r1, =max
    str r0, [r1]

    ldr r1, =y
    ldr r1, [r1]

    cmp r1, r0

    if1:
	ble if2

	ldr r1, =y
	ldr r1, [r1]
	ldr r0, =max
	str r1, [r0]

    if2:
	ldr r0, =max
	ldr r0, [r0]
	ldr r1, =z
	ldr r1, [r1]

	cmp r1, r0

	ble done

	    ldr r0, =max
	    str r1, [r0]

done:
    ldr r0, =max
    ldr r0, [r0]

    pop {ip, pc}
