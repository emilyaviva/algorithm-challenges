# Grid

## Rules
Given the following infinitely extended grid:

|      |      |      |      |      |
| :--: | :--: | :--: | :--: | :--: |
|   1  | null | null | null | ...  |
|   2  |   3  | null | null | ...  |
|   4  |   5  |   6  | null | ...  |
|   7  |   8  |   9  |  10  | ...  |
|  ... |  ... |  ... |  ... | ...  |

(The row at the top means nothing; it's there because most markdown parsers won't parse a table with no header.)

## Challenges

1. Write a function that returns the value for any arbitrary cell. Your function should not need to calculate the entire table to perform its work.
