// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Constants {
    // coding convention to uppercase constant variables
    address public constant  MyAddress = 0x88254d535dc8186E00C04B660d1EEf13e816665c;
    uint public constant MyUint = 123;

/*
    function TryToChange(address _MyAddress) public {
        MyAddress = _MyAddress; // if you do this you got an error here
    }
    */
}
