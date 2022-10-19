## Primitive Data Types
Here we introduce you to some primitive data types available in Solidity.

- `boolean`
- `uint`
- `int`
- `address`

## Boolean 
`Bool`: The possible values are constants`True` and `False`.

Operators:

- `!` (logical negation)

- `&&` (logical conjunction, “and”)

- `||` (logical disjunction, “or”)

- `==` (equality)

- `!=` (inequality)


## uint

uint stands for `unsigned integer`, meaning non negative integers<br>
    different sizes are available<br>
        `uint8`   ranges from 0 to 2 ** 8 - 1<br>
        `uint16`  ranges from 0 to 2 ** 16 - 1<br>
        ...<br>
        `uint256` ranges from 0 to 2 ** 256 - 1<br>

Operators:

- Comparisons: `<=`, `<`, `==`, `!=`, `>=`, `>` (evaluate to bool)

- Bit operators: `&`, `|`, `^` (bitwise exclusive or), `~` (bitwise negation)

- Shift operators: `<<` (left shift), `>>` (right shift)

- Arithmetic operators: `+`, `-`, unary `-` (only for signed integers), `*`, `/`, `%` (modulo), `**` (exponentiation)

## int

`Negative numbers` are allowed for int types.<br>
    Like `uint`, different ranges are available from `int8` to `int256`<br>
    <br>
    `int256` ranges from -2 ** 255 to 2 ** 255 - 1<br>
    `int128` ranges from -2 ** 127 to 2 ** 127 - 1


## address


The address type comes in two flavours, which are largely identical:

- `address`: Holds a 20 byte value (size of an Ethereum address).
- `address payable`: Same as `address`, but with the additional members `transfer` and `send`.

The idea behind this distinction is that `address payable` is an address you can send Ether to, while you are not supposed to send Ether to a plain `address`, for example because it might be a smart contract that was not built to accept Ether.

        
