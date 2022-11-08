## Payable

`Payable` function modifiers provide a mechanism to receive funds in your smart contract. These functions are annotated with the `payable` keyword.

## Keep the following in mind
- Use the keyword `payable` in a function or state variable to send and receive `Ether`.
- Include the `payable` keyword in the state variable in order to `withdraw` from the contract
- Include the `payable` keyword in the constructor to be able to `deposit` into the contract when the contract is created/deployed
  - `constructor() public payable;`
  - the deploy button in remix will be red because we can add ether when we deploy
- Include the `payable` keyword in a function to allow deposits into the contract
  - `function deposit() public payable {}`

## Example
```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract pay
{
    address payable user=payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    function payEther() public payable
    {

    }
    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function sendEtherAccount() public 
    {
        user.transfer(1 ether);
    }
}
```
