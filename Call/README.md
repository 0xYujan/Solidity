## Call
`call` is a low level function to interact with other contracts.

This is the recommended method to use when you're just sending Ether via calling the `fallback` function.

However it is not the recommend way to call existing functions.

<h3>How do you use the call method to send Ether?</h3>
As one of your Solidity functions, you can use the following code into your Solidity IDE of choice and replace the address payable _to with the recipient address.


```solidity
contract SendEther {
	function sendViaCall(address payable _to) public payable {
  	// Call returns a boolean value indicating success or failure.
    (bool sent, bytes memory data) = _to.call{value: msg.value}("");
    require(sent, "Failed to send Ether");
   }
  }
```

Below is code which creates a contract that is capable of receiving Ether from calls.

```solidity
contract ReceiveEther {
	// Function to receive Ether. msg.data must be empty
  receive() external payable {}‍
  
  // Fallback function is called when msg.data is not empty
  fallback() external payable {}‍
  
  function getBalance() public view returns (uint) {
  	return address(this).balance;
   }
  }
  ```
