## Function Modifier
Modifiers are code that can be run before and / or after a function call.

Modifiers can be used to:

- Restrict access
- Validate inputs
- Guard against reentrancy hack

<h3>How to create and use Modifiers ?</h3>
Modifiers can be created (declared) as follow:

```solidity
modifier MyModifier {
    // modifier code goes here...
}
```

You can write a modifier with or without arguments. If the modifier does not have argument, you can omit the parentheses `()`.

```solidity
modifier ModifierWithArguments(uint a) {
    // ...
}
modifier ModifierWithoutArguments() {
    // ...
}
modifier ModifierWithoutArguments {
    // ...
}
```

## The `_;` symbol
The symbol _; is called a merge wildcard. It merges the function code with the modifier code where the `_;` is placed.

In other terms, the body of the function (to which the modifier is attached to) will be inserted where the special symbol `_;` appears in the modifier’s definition.

Using the terms of the Solidity docs, it “returns the flow of execution to the original function code”.

A modifier must have the symbol `_;` within its body in order to execute. It is mandatory (does Solidity throw an error if it is not the case?).

<h3>Where to place the _; ?</h3>

The place where you write the `_;` symbol will decide if the function has to be executed before, in between or after the modifier code.

```solidity
modifier SomethingBefore {
    require(/* check something first */);
    _; // resume with function execution
}
// Do one where modifier is placed in the middle
modifier SomethingAfter {
    _; // run function first
    require(/* then check something */)
}
```

As shown in the example above, you can place the`_;` at the beginning, middle or the end of your modifier body.


## [Example](https://github.com/0xYujan/Solidity/blob/0611f8469fa19c87d54fa6deff463a13d1d6af75/Function%20Modifier/Example.sol)
