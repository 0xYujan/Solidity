## Enums

`enums` stand for `Enumerable`. `Enums` are user-defined `data types` that restrict the variable to have only one of the predefined values.

The predefined values present in the `enumerated` list are called `enums`. Internally, enums are treated as numbers. Solidity automatically converts the `enums` to `unsigned integers`.

An `enum` should have at least one value in the `enumerated` list. This value cannot be a number (positive or negative) or a `boolean` value (true or false).

`Enums` can be declared outside of a contract.


## Syntax

```solidity
enum <enum-name> {
  value1,
  value2,
  ...
}
```

## Example 1

If we consider an application for a fresh juice shop, it would be possible to restrict the glass size to `small`, `medium`, and `large`. This would make sure that it would not allow anyone to order any size other than `small`, `medium`, or `large`.

[Example 1](https://github.com/0xYujan/Solidity/blob/a753319a149c1fe459215c89bf7700662238d4a2/Enums/Example1.sol)

## Example 2

```solidity
pragma solidity ^0.8.0;

contract Example {
  // creating an enum
  enum Button { ON, OFF }

  // declaring a variable of type enum
  Button button;

  // function to turn on the button
  function buttonOn() public {
    // set the value of button to ON
    button = Button.ON;
  }

  // function to turn off the button
  function buttonOff() public {
    // set the value of button to OFF
    button = Button.OFF;
  }

  // function to get the value of the button
  function getbuttonState() public view returns(Button) {
    // return the value of button
    return button;
  }
}
```

Explanation
- Line 3: We create a contract named `Example`.
- Line 5: We create an enum named `Button`.
- Line 8: We declare a variable `button` of the `enum` type.
- Line 11: We create a function `buttonOn()` to turn on the button.
- Line 16: We create another function, `buttonOff()` to turn off the button.
- Line 21: We create a third button, `getButtonState()` to get the value of the button.


Output
- When we call the `buttonOn()` function, the value of the button will be set to `Button.ON`.
- When we call the `buttonOff()` function, the value of the button will be set to `Button.OFF`.
- When we call the `getButtonState()` function, the value of the button will be returned.

