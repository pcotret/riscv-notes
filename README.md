# riscv-notes
## General referencecs
- [Cheatsheet](https://github.com/pcotret/riscv-notes/blob/master/docs/riscv_cheatsheet.md)
- [Latest specs](https://github.com/riscv/riscv-isa-manual/releases)

## RISC-V registers
- 32 integer registers (`x***`)
- 32 floating-point extension registers (`f***`)

| Registers | ABI name | Description                       | Saver  |
| --------- | -------- | --------------------------------- | ------ |
| `x0`      | `zero`   | Hard-wired zero                   | -      |
| `x1`      | `ra`     | Return address                    | Caller |
| `x2`      | `sp`     | Stack pointer                     | Callee |
| `x3`      | `gp`     | Global pointer                    | -      |
| `x4`      | `tp`     | Thread pointer                    | -      |
| `x5`      | `t0`     | Temporary/alternate link register | Caller |
| `x6-7`    | `t1-2`   | Temporaries                       | Caller |
| `x8`      | `s0/fp`  | Saved regsiter/frame pointer      | Callee |
| `x9`      | `s1`     | Saved register                    | Callee |
| `x10-11`  | `a0-1`   | Function arguments/return values  | Caller |
| `x12-17`  | `a2-7`   | Function arguments                | Caller |
| `x18-27`  | `s2-11`  | Saved registers                   | Callee |
| `x28-31`  | `t3-6`   | Temporaries                       | Caller |
| `f0-7`    | `ft0-7`  | FP temporaries                    | Caller |
| `f8-9`    | `fs0-1`  | FP saved registers                | Callee |
| `f10-f11` | `fa0-1`  | FP arguments/return values        | Caller |
| `f12-17`  | `fa2-7`  | FP arguments                      | Caller |
| `f18-27`  | `fs2-11` | FP saved registers                | Callee |
| `f28-31`  | `ft8-11` | FP temporaries                    | Caller |

## Install `riscv-tools`
From the default repository (https://github.com/riscv/riscv-tools), you may encounter errors with a recent GCC while compiling:
- `riscv-pk`: https://github.com/riscv/riscv-pk/pull/240/commits/6c2909fd2ff9fd4925e0e9ce47a9a392aa190e4a
- `riscv-tests`: Similar behavior in [riscv-tests/env/v/vm.c file](https://github.com/riscv/riscv-test-env/blob/43d3d53809085e2c8f030d72eed1bdf798bfb31a/v/vm.c#L175)
  - Create `flush_icache.h` (see `riscv-pk` commit)
  - Replace `clear_cache` function by `__riscv_flush_icache`
  - Do not forget to add `riscv-pk/machine/flush_icache.c` in `riscv-tests/env/v/flush_icache.c`. This ASM instruction didn't exist in the old `riscv-tests` submodule. 
- There's another issue with `riscv-tests` which can be easily fixed by adding a flag in a Makefile: https://github.com/riscv/riscv-tests/issues/286#issuecomment-801002149
