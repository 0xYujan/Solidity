## Mapping

- Maps are created with the syntax 
```solidity
mapping(keyType => valueType).
```
- The `keyType` can be any built-in value type, `bytes`, `string`, or `any contract`.
- `valueType` can be any type including another mapping or an array.
- Mappings are not iterable.

## Considerations
- Mapping can only have the type of storage and is generally used for state variables.
- Mapping can be marked public. Solidity automatically creates a getter for it.

## Simple example
```solidity
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping
{
    mapping(uint => string) public roll_no;

    function map(uint keys, string memory name) public 
    {
        roll_no[keys] = name;
    }
}
```
