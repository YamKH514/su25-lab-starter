.globl f # this allows other files to find the function f

# f takes in two arguments:
# a0 is the value we want to evaluate f at
# a1 is the address of the "output" array (read the lab spec for more information).
# The return value should be stored in a0
f:
    # Your code here
    mv t0 a0
    addi t0 t0 3 # Index
    slli t2 t0 2
    add t2 t2 a1
    lw t3 0(t2)
    mv a0 t3
    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
