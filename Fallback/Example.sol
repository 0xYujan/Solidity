//SPDX-License-Identifier: MIT

pragma solidity ^0.4.0;

contract Fallback
{
	// Declaring the state variable
	uint x;
	
	// Mapping of addresses to their balances
	mapping(address => uint) balance;

	// Creating a constructor
	constructor() public
	{
		// Set x to default
		// value of 10
		x=10;

	}

	// Creating a function
	function SetX(uint _x) public returns(bool)
	{
		// Set x to the
		// value sent
		x=_x;
		return true;
	}
	
	// This fallback function
	// will keep all the Ether
	function() public payable {
		balance[msg.sender] += msg.value;
	}
}

// Creating the sender contract
contract Sender
{
function transfer() public payable
{
	address _receiver = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
				
	// Transfers 100 Eth to above contract		
	_receiver.transfer(100);
}
}
