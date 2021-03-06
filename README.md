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

