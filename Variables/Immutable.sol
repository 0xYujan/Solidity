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
