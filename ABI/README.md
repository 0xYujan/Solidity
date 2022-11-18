## Abi Encode

<h2>Encoding the parameters of a function using abi.encode()</h2>
Solidity has a global variable called `abi` that has an `encode` method, so we can use it to `encode` the parameters of any function. Let’s start with a simple example. Let’s say we have the following function

```solidity
function myFunction(address _myAddress, uint _myNumber)...
```
We are interested in `encoding` only the parameters of the function, that is, an address and an integer. We can use remix to create a function that does this.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Encode {
    function encode(address _address, uint _uint) public pure returns(bytes memory){
        return (abi.encode(_address, _uint));
    }
}
```
Deploying this contract, and calling the function `encode(…)` with the following values for address and unsigned integer: (0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 10), we get the result

`0x0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc4000000000000000000000000000000000000000000000000000000000000000a`

A quick analysis of the result shows us that it has 64 bytes. This is because the encoding occurs in multiples of 32 bytes:

`0x0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc`<br>
`4000000000000000000000000000000000000000000000000000000000000000a`

The first 32 bytes contain the address (20 bytes) and the other 32 bytes contain the integer

## Abi Decoding

<h2>Decoding the parameters of a function using abi.decode()</h2>

Let’s now use solidity to `decode` the parameters of a function. Note that it was not necessary to identify the function we are dealing with, because its signature will precede the encoded parameters. To complicate the problem a little bit, let’s use dynamic variables as parameters.

Let’s use the following contract to decode a tuple of values: string, uint and string.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Encode {
function encode(string memory _string1, uint _uint, string memory _string2) public pure returns (bytes memory) {
        return (abi.encode(_string1, _uint, _string2));
    }
function decode(bytes memory data) public pure returns (string memory _str1, uint _number, string memory _str2) {
        (_str1, _number, _str2) = abi.decode(data, (string, uint, string));            
    }
}
```

Deploying, then calling the function `encode(…)` with the following parameters (Yujan, 1, Ranjitkar), we have the following return:

```solidity
0x0000000000000000000000000000000000000000000000000000000000
000060000000000000000000000000000000000000000000000000000000
000000000100000000000000000000000000000000000000000000000000
000000000000a00000000000000000000000000000000000000000000000
00000000000000000559756a616e00000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000952616e6a69746b61720000000000000000
000000000000000000000000000000
```

You might expect, perhaps, that the return would be 96 bytes (3 x 32), because we have 3 variables. However, 2 of the 3 variables are dynamic, and the encoding of dynamic variables is not so simple. 

 Using the function decode(bytes memory data) we wrote in the contract, one can retrieve the encoded information:
 
 ![decode](https://user-images.githubusercontent.com/63731234/202760128-c80e09a4-3908-4b48-bdf2-de76bb72aa5e.png)

 
