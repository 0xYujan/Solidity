// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VendingMachine
{
    address public owner;
    mapping (address => uint) public donutBalances;

    constructor()
    {
        owner = msg.sender;
        donutBalances[address(this)] = 100;
    }

    function getVendingMachineBalance() public view returns (uint)
    {
        return donutBalances[address(this)];
    }

    function restock(uint amount) public 
    {
        require(msg.sender == owner, "Only the owner can restock this machine.");
        donutBalances[address(this)] += amount;
    }

    function purchase (uint amount) public payable
    {
        require(msg.value >= amount * 2 ether, "You must pay at least 2 ether per donut");
        require(donutBalances[address(this)] >= amount, "Not enough donuts in stock to fulfill purchase request");
        donutBalances[address(this)] -= amount;
        donutBalances[msg.sender] += amount;
    }
}
