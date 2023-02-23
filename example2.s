.data
n: .word 6079
is_prime .word 0
k: .word 0

.text
main:   la      t0, n           # int *t0 = &n;
        lw      t0, 0(t0)       # t0 = *t0;
        la      t1, is_prime    # int *t1 = &is_prime;
        lw      t1, 0(t1)       # t1 = *t1;
        la      t2, k           # int *t2 = &k;
        lw      t2, 0(t2)       # t2 = *t2;
        addi    t3, x0, 1       # t3 = 1
        beq     t0, t3, funcIf  # if(t0==t3) goto funcIf
        addi    t1, x0, 1       
        addi    t2, x0, 2
checkwhile: blt t2, t0, while
while:  rem     t4, t0, t2
        beq     t4, x0, if-while
        addi    t2, t2, 1
        j       checkwhile
if-while:   
        addi    t1, x0, 0
        j       exit
funcIf: addi    t1, x0, 0
        j       exit
exit:   addi    a0, x0, 1
        addi    a1, t1, 0
        ecall
        addi    a0, x0, 10
        ecall
