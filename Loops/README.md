## Loops

- Solidity supports `for`, `while`, and `do while` loops.

- Don't write loops that are unbounded as this can hit the `gas limit`, causing your transaction to fail.

- For the reason above, `while` and `do while` loops are rarely used.

## While Loop

The most basic loop in Solidity is the `while` loop which would be discussed in this chapter. The purpose of a  `while` loop is to execute a statement or code block repeatedly as long as an `expression` is true. Once the expression becomes `false`, the loop terminates.

# Flow Chart
The flow chart of while loop looks as follows −

![while_loop](https://user-images.githubusercontent.com/63731234/197352693-5dc2aeab-b383-4401-9a82-6871372623cf.jpg)

Syntax

The syntax of `while loop` in Solidity is as follows −

```solidity
while (expression) {
   Statement(s) to be executed if expression is true
}
```
