## Fallback
`fallback` is a function that does not take any arguments and does not return anything.

It is executed either when

- a function that does not exist is called or
- Ether is sent directly to a contract but `receive()` does not exist or `msg.data` is not empty

<h3>Properties of a fallback function:</h3>

- Has no name or arguments.
- If it is not marked payable, the contract will throw an exception if it receives plain ether without data.
- Can not return anything.
- Can be defined once per contract.
- It is also executed if the caller meant to call a function that is not available
- It is mandatory to mark it external.
- It is limited to `2300 gas` when called by another function. It is so for as to make this function call as cheap as possible.

## [Example](https://github.com/0xYujan/Solidity/blob/ba951bc21b3b6cfc4c6a18c978191820273187cc/Fallback/Example.sol)

