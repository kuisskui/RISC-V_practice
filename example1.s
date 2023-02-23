.data
i: .word 0
n: .word 6

.text
main:   la      t0, i
        lw      t0, 0(t0)
        la      t1, n
        lw      t1, 0(t1)
        addi    t2, x0, 1
checkWhile:  bne     t1, t2, while
        addi    a0, x0, 1
        addi    a1, t0, 0
        ecall
        addi    a0, x0, 10
        ecall
while:  addi    t0, t0, 1
        addi    t3, x0, 2
        rem     t4, t1, t3
        beq     t4, x0, if
        addi    t5, x0, 3
        mul     t1, t1, t5
        addi    t1, t1, 1
        j       checkWhile
if:  div    t1, t1, t3
        j       checkWhile

