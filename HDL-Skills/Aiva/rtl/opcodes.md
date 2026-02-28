| Instruction Name  | Byte 1  | Byte 2 | Byte 3 |
| :---              | :----:  | :----: | :----: |
| No Op | h'00' | x | x |
| Add | h'01' | h'00' | VAL |
| Add w/ Carry | h'01' | h'01' | VAL |
| Sub | h'01' | h'02' | VAL |
| Sub W/ Borrow | h'01' | h'03' | VAL |