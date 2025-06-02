.global lab1
.syntax unified

/*
    Variant: 2315 % 5 = 0 => (a+b)/2 + c!
*/

#define A #4
#define B #2
#define C #5

lab1:
    mov r0, A
    mov r1, B
    mov r2, C

    add r0, r0, r1

    lsr r0, r0, #1

    mov r1, r2
    sub r2, r2, #1
    loop1:
    cmp r2, #1
    beq loop1exit
    mul r1, r1, r2
    sub r2, r2, #1
    b loop1

    loop1exit:
    add r0, r0, r1

    mov pc, lr
