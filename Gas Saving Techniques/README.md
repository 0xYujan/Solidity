## What Is The Gas Price?
Gas price is the amount of ether you pay for every unit of gas. Gas price is not fixed, similar to fuel price. It is measured in units of Wei or gwei.

The exact price of the gas is determined by the supply and demand between the network's miners.
```solidity
1 gwei = 1000000000 wei
1 ether = 1000000000 gwei
```

## Gas Saving Techniques
Some gas saving techniques.

- Replacing `memory` with `calldata`
- Loading state variable to memory
- Replace for loop `i++` with `++i`
- Caching array elements
- Short circuit

## The Ethereum Average Gas Price Chart:
The following chart signifies the average gas price for transactions in gwei across time.

![ethereum-average-gas-pri](https://user-images.githubusercontent.com/63731234/202911279-80471190-055b-45e8-bed9-5abc85737636.png)


Source -[etherscan.io](https://etherscan.io/chart/gasprice)

Hence it becomes necessary to make sure the gas consumed by the smart contract is as less as possible.


```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// gas golf
contract GasGolf {
    // start - 50908 gas
    // use calldata - 49163 gas
    // load state variables to memory - 48952 gas
    // short circuit - 48634 gas
    // loop increments - 48244 gas
    // cache array length - 48209 gas
    // load array elements to memory - 48047 gas
    // uncheck i overflow/underflow - 47309 gas

    uint public total;

    // start - not gas optimized
    // function sumIfEvenAndLessThan99(uint[] memory nums) external {
    //     for (uint i = 0; i < nums.length; i += 1) {
    //         bool isEven = nums[i] % 2 == 0;
    //         bool isLessThan99 = nums[i] < 99;
    //         if (isEven && isLessThan99) {
    //             total += nums[i];
    //         }
    //     }
    // }

    // gas optimized
    // [1, 2, 3, 4, 5, 100]
    function sumIfEvenAndLessThan99(uint[] calldata nums) external {
        uint _total = total;
        uint len = nums.length;

        for (uint i = 0; i < len; ) {
            uint num = nums[i];
            if (num % 2 == 0 && num < 99) {
                _total += num;
            }
            unchecked {
                ++i;
            }
        }

        total = _total;
    }
}

```
