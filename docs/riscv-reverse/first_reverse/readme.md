# First reverse

Main code:

```c
int main()
{
    int a=4;
    a=a+1;
    return 0;
}
```

Compile and `objdump`:

```bas
$ riscv32-unknown-elf-gcc main.c -o main
$ riscv32-unknown-elf-objdump -S main > dump.asm
```

Assembly code:

```assembly
00010148 <main>:
   10148:	1101                	addi	sp,sp,-32	# Allocate space. sp=sp-32
   1014a:	ce22                	sw	s0,28(sp)		# Save s0. Store s0 at [sp+28]
   1014c:	1000                	addi	s0,sp,32 	# Set s0 as the frame pointer. s0=sp+32
   1014e:	4791                	li	a5,4			# Load 4 in a5 (a=4)
   10150:	fef42623          	sw	a5,-20(s0)			# Store a5 in [s0-20]
   10154:	fec42783          	lw	a5,-20(s0)			# Load [s0-20] in a5
   10158:	0785                	addi	a5,a5,1		# a5=a5+1 (a=a+1)
   1015a:	fef42623          	sw	a5,-20(s0)			# Store a5 in [s0-20]
   1015e:	4781                	li	a5,0			# Load 0 in a5
   10160:	853e                	mv	a0,a5			# Move a5 in a0 (hardwired zero)
   10162:	4472                	lw	s0,28(sp)		# Load [sp+28] in s0
   10164:	6105                	addi	sp,sp,32	# De-allocate space. sp=sp+32
   10166:	8082                	ret
```

## References

- https://riscv.org/specifications/isa-spec-pdf/
- https://rv8.io/asm