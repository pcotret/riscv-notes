# riscv-notes
## Board #1 - Maixduino

- https://wiki.sipeed.com/en/maix/board/maixduino.html
- https://maixduino.sipeed.com/en/
- Demos for the crypto core, AI chip, etc: https://github.com/kendryte/kendryte-standalone-demo
## RV32I cheatsheet

| Format                | Name                               | Pseudocode                                      |
| :-------------------- | :--------------------------------- | :---------------------------------------------- |
| `LUI rd,imm`          | Load Upper Immediate               | rd ← imm                                        |
| `AUIPC rd,offset`     | Add Upper Immediate to PC          | rd ← pc + offset                                |
| `JAL rd,offset`       | Jump and Link                      | rd ← pc + length(inst) pc ← pc + offset         |
| `JALR rd,rs1,offset`  | Jump and Link Register             | rd ← pc + length(inst) pc ← (rs1 + offset) ∧ -2 |
| `BEQ rs1,rs2,offset`  | Branch Equal                       | if rs1 = rs2 then pc ← pc + offset              |
| `BNE rs1,rs2,offset`  | Branch Not Equal                   | if rs1 ≠ rs2 then pc ← pc + offset              |
| `BLT rs1,rs2,offset`  | Branch Less Than                   | if rs1 < rs2 then pc ← pc + offset              |
| `BGE rs1,rs2,offset`  | Branch Greater than Equal          | if rs1 ≥ rs2 then pc ← pc + offset              |
| `BLTU rs1,rs2,offset` | Branch Less Than Unsigned          | if rs1 < rs2 then pc ← pc + offset              |
| `BGEU rs1,rs2,offset` | Branch Greater than Equal Unsigned | if rs1 ≥ rs2 then pc ← pc + offset              |
| `LB rd,offset(rs1)`   | Load Byte                          | rd ← s8[rs1 + offset]                           |
| `LH rd,offset(rs1)`   | Load Half                          | rd ← s16[rs1 + offset]                          |
| `LW rd,offset(rs1)`   | Load Word                          | rd ← s32[rs1 + offset]                          |
| `LBU rd,offset(rs1)`  | Load Byte Unsigned                 | rd ← u8[rs1 + offset]                           |
| `LHU rd,offset(rs1)`  | Load Half Unsigned                 | rd ← u16[rs1 + offset]                          |
| `SB rs2,offset(rs1)`  | Store Byte                         | u8[rs1 + offset] ← rs2                          |
| `SH rs2,offset(rs1)`  | Store Half                         | u16[rs1 + offset] ← rs2                         |
| `SW rs2,offset(rs1)`  | Store Word                         | u32[rs1 + offset] ← rs2                         |
| `ADDI rd,rs1,imm`     | Add Immediate                      | rd ← rs1 + sx(imm)                              |
| `SLTI rd,rs1,imm`     | Set Less Than Immediate            | rd ← sx(rs1) < sx(imm)                          |
| `SLTIU rd,rs1,imm`    | Set Less Than Immediate Unsigned   | rd ← ux(rs1) < ux(imm)                          |
| `XORI rd,rs1,imm`     | Xor Immediate                      | rd ← ux(rs1) ⊕ ux(imm)                          |
| `ORI rd,rs1,imm`      | Or Immediate                       | rd ← ux(rs1) ∨ ux(imm)                          |
| `ANDI rd,rs1,imm`     | And Immediate                      | rd ← ux(rs1) ∧ ux(imm)                          |
| `SLLI rd,rs1,imm`     | Shift Left Logical Immediate       | rd ← ux(rs1) « ux(imm)                          |
| `SRLI rd,rs1,imm`     | Shift Right Logical Immediate      | rd ← ux(rs1) » ux(imm)                          |
| `SRAI rd,rs1,imm`     | Shift Right Arithmetic Immediate   | rd ← sx(rs1) » ux(imm)                          |
| `ADD rd,rs1,rs2`      | Add                                | rd ← sx(rs1) + sx(rs2)                          |
| `SUB rd,rs1,rs2`      | Subtract                           | rd ← sx(rs1) - sx(rs2)                          |
| `SLL rd,rs1,rs2`      | Shift Left Logical                 | rd ← ux(rs1) « rs2                              |
| `SLT rd,rs1,rs2`      | Set Less Than                      | rd ← sx(rs1) < sx(rs2)                          |
| `SLTU rd,rs1,rs2`     | Set Less Than Unsigned             | rd ← ux(rs1) < ux(rs2)                          |
| `XOR rd,rs1,rs2`      | Xor                                | rd ← ux(rs1) ⊕ ux(rs2)                          |
| `SRL rd,rs1,rs2`      | Shift Right Logical                | rd ← ux(rs1) » rs2                              |
| `SRA rd,rs1,rs2`      | Shift Right Arithmetic             | rd ← sx(rs1) » rs2                              |
| `OR rd,rs1,rs2`       | Or                                 | rd ← ux(rs1) ∨ ux(rs2)                          |
| `AND rd,rs1,rs2`      | And                                | rd ← ux(rs1) ∧ ux(rs2)                          |
| `FENCE pred,succ`     | Fence                              |                                                 |
| `FENCE.I `            | Fence Instruction                  |                                                 |

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
| `x5`      | `t0      | Temporary/alternate link register | Caller |
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

