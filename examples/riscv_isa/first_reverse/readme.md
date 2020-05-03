# First reverse

Main code:

```c
int main()
{
    int a=0,b=0;
    a=a+1;
	b=b-2;
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
   10148:	1101                	addi	sp,sp,-32
   1014a:	ce22                	sw	s0,28(sp)
   1014c:	1000                	addi	s0,sp,32
   1014e:	fe042623          	sw	zero,-20(s0)
   10152:	fe042423          	sw	zero,-24(s0)
   10156:	fec42783          	lw	a5,-20(s0)
   1015a:	0785                	addi	a5,a5,1  
   1015c:	fef42623          	sw	a5,-20(s0)
   10160:	fe842783          	lw	a5,-24(s0)
   10164:	17f9                	addi	a5,a5,-2  
   10166:	fef42423          	sw	a5,-24(s0)
   1016a:	4781                	li	a5,0
   1016c:	853e                	mv	a0,a5
   1016e:	4472                	lw	s0,28(sp)
   10170:	6105                	addi	sp,sp,32
   10172:	8082                	ret
```

## References

- https://riscv.org/specifications/isa-spec-pdf/
- https://rv8.io/asm