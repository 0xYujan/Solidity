## Variables

Solidity supports three types of variables
- `State`
- `Local`
- `Global`

## State: 
- Variables whose values are premanently stored in a contract storage.
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
- These are special variables which exist in global workspace and provide information about the blockchain and transaction properties.

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
