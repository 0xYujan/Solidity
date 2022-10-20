// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello World!!!";
    uint public num = 123;

    function doSomething() public view returns(uint256) {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;
        return i;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}