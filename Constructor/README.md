## Constructor
`Constructor` is a special function declared using `constructor` keyword. It is an optional funtion and is used to initialize state variables of a contract. Following are the key characteristics of a constructor.

- A contract can have only `one constructor`.
- A `constructor` code is executed once when a contract is created and it is used to initialize contract state.
- After a `constructor` code executed, the final code is deployed to blockchain. This code include public functions and code reachable through public functions. Constructor code or any internal method used only by constructor are not included in final code.
- A `constructor` can be either public or internal.
- A internal `constructor` marks the contract as abstract.
- In case, no `constructor` is defined, a default constructor is present in the contract.

```solidity
pragma solidity ^0.5.0;

contract Test {
   constructor() public {}
}
```

- In case, base contract have `constructor` with arguments, each derived contract have to pass them.
- Base `constructor` can be `initialized` directly using following way −

```solidity
pragma solidity ^0.5.0;

contract Base {
   uint data;
   constructor(uint _data) public {
      data = _data;   
   }
}
contract Derived is Base (5) {
   constructor() public {}
}
```

- Base `constructor` can be initialized indirectly using following way −

```solidity
pragma solidity ^0.5.0;

contract Base {
   uint data;
   constructor(uint _data) public {
      data = _data;   
   }
}
contract Derived is Base {
   constructor(uint _info) Base(_info * _info) public {}
}
```
- Direct and Indirect ways of initializing base contract `constructor` is not allowed.
- If derived contract is not passing `argument(s)` to base contract `constructor` then derived contract will become abstract.

## [Example](https://github.com/0xYujan/Solidity/blob/1b6a8adcb4674f5e1e9ea3f36ab40325bb1e5418/Constructor/Example.sol)
