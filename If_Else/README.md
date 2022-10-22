## IF / ELSE

Solidity supports conditional statements `if`, `else if` and `else`.

# Syntax
The syntax of an `if-else-if` statement is as follows −

```solidity
if (expression 1) {
   Statement(s) to be executed if expression 1 is true
} else if (expression 2) {
   Statement(s) to be executed if expression 2 is true
} else if (expression 3) {
   Statement(s) to be executed if expression 3 is true
} else {
   Statement(s) to be executed if no expression is true
}
```

There is nothing special about this code. It is just a series of if statements, where each if is a part of the else clause of the previous statement. Statement(s) is executed based on the true condition, if none of the conditions is true, then the else block is executed.

## [Example](https://github.com/0xYujan/Solidity/blob/main/If_Else/IfElse.sol)
