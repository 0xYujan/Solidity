## Import
You can import local and external files in Solidity.

<h3>Local</h3>
Here is our folder structure.

```solidity
├── Import.sol
└── Foo.sol
```

Foo.sol

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

struct Point {
    uint x;
    uint y;
}

error Unauthorized(address caller);

function add(uint x, uint y) pure returns (uint) {
    return x + y;
}

contract Foo {
    string public name = "Foo";
}
```

Import.sol
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// import Foo.sol from current directory
import "./Foo.sol";

// import {symbol1 as alias, symbol2} from "filename";
import {Unauthorized, add as func, Point} from "./Foo.sol";

contract Import {
    // Initialize Foo.sol
    Foo public foo = new Foo();

    // Test Foo.sol by getting it's name.
    function getFooName() public view returns (string memory) {
        return foo.name();
    }
}
```

<h3>External</h3>

You can also import from GitHub by simply copying the url

```solidity
// https://github.com/0xYujan/Solidity/blob/main/Project/EventContract.sol
import "https://github.com/0xYujan/Solidity/blob/main/Project/EventContract.sol";

// Example import LeapYear.sol from Solidity repo
// https://github.com/0xYujan/Solidity/blob/main/Program/LeapYear.sol
import "https://github.com/0xYujan/Solidity/blob/main/Program/LeapYear.sol";
```
