## Visibility
Functions and state variables have to declare whether they are accessible by other contracts.

Functions can be declared as

- `public` - any contract and account can call
- `private` - only inside the contract that defines the function
- `internal` - only inside contract that inherits an `internal` function
- `external` - only other contracts and accounts can call

State variables can be declared as `public`, `private`, or `internal` but not `external`.

## Private
Private function can only be called
- inside this contract
- Contracts that inherit this contract cannot call this function.
 ```solidity
    function privateFunc() private pure returns (string memory) {
        return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }
```

## Internal
Internal function can be called
- inside this contract
- inside contracts that inherit this contract
```solidity
    function internalFunc() internal pure returns (string memory) {
        return "internal function called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }
```

## Public
Public functions can be called
- inside this contract
- inside contracts that inherit this contract
- by other contracts and accounts
```solidity
    function publicFunc() public pure returns (string memory) {
        return "public function called";
    }
```

## External
External functions can only be called
- by other contracts and accounts
```solidity
    function externalFunc() external pure returns (string memory) {
        return "external function called";
    }
```

## [Example]()
