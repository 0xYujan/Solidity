// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Creating a contract
contract Types {
	
	// Declaring a dynamic array
	uint[] data;
	
	// Declaring state variable
	uint8 j = 0;
	
	// Defining a function to
	// demonstrate While loop'
	function loop(
	) public returns(uint[] memory){
	while(j < 5) {
		j++;
		data.push(j);
	}
	return data;
	}
}
