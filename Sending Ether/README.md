## Sending Ether (transfer, send, call)
<h3>How to send Ether?</h3>
You can send Ether to other contracts by

- `transfer` (2300 gas, throws error)
- `send` (2300 gas, returns bool)
- `call` (forward all gas or set gas, returns bool)

<h3>How to receive Ether?</h3>
A contract receiving Ether must have at least one of the functions below

`receive() external payable`

`fallback() external payable`

`receive()` is called if `msg.data` is empty, otherwise `fallback()` is called.

<h3>Which method should you use?</h3>

`call` in combination with re-entrancy guard is the recommended method to use after December 2019.

Guard against re-entrancy by

- making all state changes before calling other contracts
- using re-entrancy guard modifier

```
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
```


```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveEther {

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
```
