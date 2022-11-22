## Unchecked Math
 We never want behavior that leads to `over/underflow*`. The reason the `unchecked` keyword exists is to allow Solidity developers to 
 write more efficient programs. The default `checked` behavior costs more `gas` when calculating, because under-the-hood those checks 
 are implemented as a series of opcodes that, prior to performing the actual arithmetic, check for `under/overflow` and revert if it is 
 detected. So if you're a Solidity developer who needs to do some math in `0.8.0` or greater, and you can prove that there is no 
 possible way for your arithmetic to `under/overflow` (maybe because you have your own `if` statement which checks that the numbers 
 being added are never greater than, say, 100), then you can surround the arithmetic in an `unchecked` block.
 
- `Overflow` and `underflow` of numbers in Solidity 0.8 throw an error. This can be disabled by using `unchecked`.
- Disabling `overflow / underflow` check saves `gas`.


 
 ## Example
 
 ```solidity
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract UncheckedMath {
    function add(uint x, uint y) external pure returns (uint) {
        // 22291 gas
        // return x + y;

        // 22103 gas
        unchecked {
            return x + y;
        }
    }

    function sub(uint x, uint y) external pure returns (uint) {
        // 22329 gas
        // return x - y;

        // 22147 gas
        unchecked {
            return x - y;
        }
    }

    function sumOfCubes(uint x, uint y) external pure returns (uint) {
        // Wrap complex math logic inside unchecked
        unchecked {
            uint x3 = x * x * x;
            uint y3 = y * y * y;

            return x3 + y3;
        }
    }
}

 ```
