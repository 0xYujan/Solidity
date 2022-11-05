## Inheritance
Solidity supports `inheritance` between smart contracts, where multiple contracts can be inherited into a single contract. The contract from which other contracts inherit features is known as a base contract, while the contract which inherits the features is called a derived contract.

- Solidity supports multiple inheritance. Contracts can inherit other contract by using the `is` keyword.
- Function that is going to be overridden by a child contract must be declared as `virtual`.
- Function that is going to override a parent function must use the keyword `override`.
- Order of inheritance is important.
- You have to list the parent contracts in the order from “most base-like” to “most derived”.

```
Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E
```

## Using the `is` Keyword in Solidity
To create a derived (or inheriting) contract, simply use the is keyword, as demonstrated in the example code below:

```solidity
# A is a derived contract of B
contract A is B{

}
```
As mentioned earlier, Solidity allows for multiple inheritances. You can implement multiple inheritances in solidity as shown in this sample code:

```solidity
contract A{

}

# single inheritance 
contract B is A{

}

#multiple inheritance 
contract C is A,B {

}
```
The implementation above has been carefully chosen to demonstrate a particularly interesting case of multiple inheritances in Solidity. Take note that one of the contracts that `C` is deriving from is also a derived contract. That is, contract `B` is also derived from contract `A`.

This is not an error – Solidity allows this type of multiple inheritances as well, and your code should compile without any `errors`.

