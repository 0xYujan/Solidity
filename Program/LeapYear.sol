//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract leapYear{

    uint256 year;

    function Year(uint256 _year) public {
        year = _year;
    }
    function check() public view returns(string memory) {

        if (year % 4 == 0)
    {
        if (year % 100 == 0)
        {
            if (year % 400 == 0)
            {
                return "leap year";
            }
            else
                return "Not a Leap year";
        }
        else
            return "Leap Year";
    }
    else
        return "Not a Leap year";
    

}}