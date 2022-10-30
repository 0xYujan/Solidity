// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAndPure {
    uint public x = 1;

    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
        // return i + j + x; if you try this then you got the error
    }
}
