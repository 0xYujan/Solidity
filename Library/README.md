## Library 
Libraries are similar to Contracts but are mainly intended for reuse. A Library contains functions which other contracts can call. Solidity have certain restrictions on use of a Library. Following are the key characteristics of a Solidity Library.

- Library functions can be called directly if they do not modify the state. That means pure or view functions only can be called from outside the library.
- Library can not be destroyed as it is assumed to be stateless.
- A Library cannot have state variables.
- A Library cannot inherit any element.
- A Library cannot be inherited.

<h3>Syntax:</h3>

```solidity
library <libraryName> {
    // block of code
}
```
Example: In the below example, the library `libraryExample` is created to demonstrate the procedure to create a library.

Solidity
```solidity
// Solidity program to demonstrate 
// how to create a library
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Library Definition
library libraryExample {
    
    // Defining structure
    struct Constants {

        // Declaring variables
        uint Pi;             
        uint EulerNb;        
        uint PythagoraConst; 
        uint TheodorusConst; 
    }
}
```

Deploying Library Using `For` Keyword
A library can be defined on the same contract as well as it can be imported from outside by using the import statements. 

<h3>Example:</h3>

import <libraryName> from “./library-file.sol”;
A single file can contain multiple libraries that can be specified using curly braces in the import statement separated by a comma. A library can be accessed within the smart contract by using `for` keyword. 

  <h3>Syntax:</h3>
  
```solidity
<libraryName> for <dataType>
 ```
The above statement can be used to attach library functions to any type. `libraryName` is the name of the desired library to import, dataType is the variable type for which we want to access the library. All members of the library can also be used by the wildcard operator(*).

Example: In the below example, the contract `libraryExample` is created to demonstrate how to deploy a library using the `For` keyword.

Solidity
```solidity
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Defining Library
library LibExample {

    // Function to power of 
    // an unsigned integer
    function pow(
      uint a, uint b) public view returns (
      uint, address) {
        return (a ** b, address(this));
    }
}

// Defining calling contract
contract LibraryExample {
    
    // Deploying library using 
    // "for" keyword
    using LibExample for uint;
    address owner = address(this);
    
    // Calling function pow to 
    // calculate power 
    function getPow(
      uint num1, uint num2) public view returns (
      uint, address) {
        return num1.pow(num2);
    }
}
```
