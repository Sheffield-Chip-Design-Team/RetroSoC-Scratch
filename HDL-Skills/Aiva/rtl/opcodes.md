
| Instruction Name        | Byte 1 | Byte 2 | Byte 3 |
| :---------------------- | :----: | :----: | :----: |
| No Op                   | h'00'  |   x    |   x    |
| A Add Literal           | h'01'  | h'00'  |  VAL   |
| A Add Literal w/ Carry  | h'01'  | h'01'  |  VAL   |
| A Add X                 | h'01'  | h'02'  |   x    |
| A Add X w/ Carry        | h'01'  | h'03'  |   x    |
| A Add Y                 | h'01'  | h'04'  |   x    |
| A Add Y w/ Carry        | h'01'  | h'05'  |   x    |
| A Sub Literal           | h'01'  | h'10'  |  VAL   |
| A Sub Literal w/ Borrow | h'01'  | h'11'  |  VAL   |
| A Sub X                 | h'01'  | h'12'  |   x    |
| A Sub X w/ Borrow       | h'01'  | h'13'  |   x    |
| A Sub Y                 | h'01'  | h'14'  |   x    |
| A Sub Y w/ Borrow       | h'01'  | h'15'  |   x    |
| A AND Literal           | h'01'  | h'20'  |  VAL   |
| A AND X                 | h'01'  | h'22'  |   x    |
| A AND Y                 | h'01'  | h'23'  |   x    |
| A OR Literal            | h'01'  | h'30'  |  VAL   |
| A OR X                  | h'01'  | h'32'  |   x    |
| A OR Y                  | h'01'  | h'33'  |   x    |
| A XOR Literal           | h'01'  | h'40'  |  VAL   |
| A XOR X                 | h'01'  | h'42'  |   x    |
| A XOR Y                 | h'01'  | h'43'  |   x    |
| A XNOR Literal          | h'01'  | h'50'  |  VAL   |
| A XNOR X                | h'01'  | h'52'  |   x    |
| A XNOR Y                | h'01'  | h'53'  |   x    |
| A NOR Literal           | h'01'  | h'60'  |  VAL   |
| A NOR X                 | h'01'  | h'62'  |   x    |
| A NOR Y                 | h'01'  | h'63'  |   x    |
| A NAND Literal          | h'01'  | h'70'  |  VAL   |
| A NAND X                | h'01'  | h'72'  |   x    |
| A NAND Y                | h'01'  | h'73'  |   x    |
| NOT A                   | h'01'  | h'80'  |   x    |
