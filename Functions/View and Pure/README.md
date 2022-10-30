## View and Pure functions

Solidity provides two particular types of getter functions: `view` and `pure`.

## The View functions
`view` allows the state to be read but does not allow the state to be modified:

```solidity
uint public a = 1;
function viewFunction(uint b) public view returns (uint) {
  return a + b;
}
```

Let’s compile and deploy the contract. Then call the `viewFunction()` function:

and if you give `b = 2`

The result is `3 = 1 + 2`.

The `view` functions therefore ensure that they will not modify the state. The following statements modify the state:

- Modify a state variable,
- Emit an event,
- Create a contract,
- Use self-destruct,
- Send Ether via a call,
- Call a function that is not marked `view` or `pure`,
- Use a low level call,
- Use an inline assembly containing some opcodes.
Getter methods are by default `view` functions.

## The pure functions
pure forbids the reading or modification of the state :

```solidity
function pureFunction(uint x, uint y) public pure returns (uint) {
  return x + y;
}
```

Let’s compile and deploy the contract. Then call the `pureFunction()` function:

In this time you need to give two value `x` and `y`. If you give `x = 1` and `y =2`

The function returns the value `3 = 1 + 2`.

The `pure` functions make sure that they do not read or modify the state.

The following statements are considered to read the state:

- Read a state variable,
- Accessing `address(this).balance` or `<address>.balance`,
- Access a special variable `block`, `tx`, `msg` (`msg.sig` and `msg.data` can be read),
- Call a `pure` unmarked function,
- Use an inline assembly containing certain opcodes.

## [Example](https://github.com/0xYujan/Solidity/blob/7694eec3444ae83499d4e0c0b72a95bb83516bc8/Functions/View%20and%20Pure/Example.sol)
