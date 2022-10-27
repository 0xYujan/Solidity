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
