## Variables

Solidity supports three types of variables
- `State`
- `Local`
- `Global`

## State: 
- Variables whose values are permanently stored in contract storage.
- Declared outside a function
- Stored on the blockchain

```solidity
pragma solidity ^0.8.0;
contract State {
   uint storedData;      // State variable
   constructor() public {
      storedData = 10;   // Using State variable
   }
}
```

## Local:
- Variables whose values are available only within a function where it is defined. Function parameters are always local to that function.
- Declared inside a function
- Not stored on the blockchain

```solidity
pragma solidity ^0.8.0;
contract Local {
   
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return result; //access the local variable
   }
}
```

## Global
- These are special variables that exist in the global workspace and provide information about the blockchain and transaction properties.

|Name |	Returns|
|----|----|
|blockhash(uint blockNumber) returns (bytes32)|	Hash of the given block - only works for 256 most recent, excluding current, blocks|
|block.coinbase (address payable)|	Current block miner's address|
|block.difficulty (uint)|	Current block difficulty|
|block.gaslimit (uint)|	Current block gaslimit|
|block.number (uint)|	Current block number|
|block.timestamp (uint)|	Current block timestamp as seconds since unix epoch|
|gasleft() returns (uint256)|	Remaining gas|
|msg.data (bytes calldata)|	Complete calldata|
|msg.sender (address payable)|	Sender of the message (current caller)|
|msg.sig (bytes4)|	First four bytes of the calldata (function identifier)|
|msg.value (uint)|	Number of wei sent with the message|
|now (uint)|	Current block timestamp|
|tx.gasprice (uint)|	Gas price of the transaction|
|tx.origin (address payable)|	Sender of the transaction|

## Constant

- Constants are variables that cannot be modified.
- Their value is hard coded and using constants can save gas cost.

```solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constants {
    // coding convention to uppercase constant variables
    address public constant  MY_ADDRESS = 0x88254d535dc8186E00C04B660d1EEf13e816665c;
    uint public constant MY_UINT = 123;
}

```

## Immutable

- Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterward.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MyAddress;
    uint public immutable MyUint;

    constructor(uint _MyUint) {
        MyAddress = msg.sender;
        MyUint = _MyUint;
    }
}
```

## Reading and Writing to a State Variable

- To write or update a state variable you need to send a transaction.
- On the other hand, you can read state variables, for free, without any transaction fee.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // State variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable.
    function set(uint _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint) {
        return num;
    }
}
```

