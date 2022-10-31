## Error
An `error` will undo all changes made to the state during a transaction.

You can throw an error by calling `require`, `revert` or `assert`.

## Require statement

The `require` statements declare prerequisites for running the function i.e. it declares the constraints which should be satisfied before executing the code. It accepts a single argument and returns a boolean value after evaluation, it also has a custom string message option. If false then exception is raised and execution is terminated. The unused gas is returned back to the caller and the state is reversed to its original state. Following are some cases when require type of exception is triggered :

- When `require()` is called with the arguments which result as false.
- When a function called by a message does not end properly.
- When a contract is created using the new keyword and the process does not end properly.
- When a codeless contract is targeted to an external function.
- When `ethers` are sent to the contract using the public getter method.
- When `.transfer()` method fails.
- When an assert is called with a condition that results in false.
- When a zero-initialized variable of a function is called.
- When a large or a negative value is converted to an enum.
- When a value is divided or modulo by zero.
- When accessing an array in an index which is too big or negative.

<h3>Example:</h3> 

In the below example, the contract `requireStatement` demonstrates how to use the `require statement`.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract requireStatement {
	
	function checkInput(uint _input) public pure returns(string memory){
		require(_input >= 0, "invalid uint8");
		require(_input <= 255, "invalid uint8");
		
		return "Input is Uint8";
	}
	
	function Odd(uint _input) public pure returns(bool){
		require(_input % 2 != 0);
		return true;
	}
}
```

## Assert Statement 
Its syntax is similar to the `require statement`. It returns a boolean value after the evaluation of the condition. Based on the return value either the program will continue its execution or it will throw an exception. Instead of returning the unused gas, the assert statement consumes the entire gas supply and the state is then reversed to the original state. Assert is used to check the current state and function conditions before the execution of the contract. Below are some cases with assert type exceptions :

- When an assert is called with a condition that results in false.
- When a zero-initialized variable of a function is called.
- When a large or a negative value is converted to an enum.
- When a value is divided or modulo by zero.
- When accessing an array in an index which is too big or negative.


<h3>Example:</h3> 

In the below example, the contract `assertStatement` demonstrates how to use an `assert statement`. 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract assertStatement {

	bool result;

	function checkOverflow(uint _num1, uint _num2) public {
		uint sum = _num1 + _num2;
		assert(sum<=255);
		result = true;
	}
	
	function getResult() public view returns(string memory){
		if(result == true){
			return "No Overflow";
		}
		else{
			return "Overflow exist";
		}
	}
}

```


## Revert Statement
This statement is similar to the require statement. It does not evaluate any condition and does not depends on any state or statement. It is used to generate exceptions, display errors, and revert the function call. This statement contains a string message which indicates the issue related to the information of the exception. Calling a revert statement implies an exception is thrown, the unused gas is returned and the state reverts to its original state.  Revert is used to handle the same exception types as require handles, but with little bit more complex logic.

<h3>Example:</h3> 

In the below example, the contract `revertStatement` demonstrates the `revert statement`. 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract revertStatement {

function checkOverflow(uint _num1, uint _num2) public pure returns(string memory, uint){
		uint sum = _num1 + _num2;
		if(sum < 0 || sum > 255){
			revert(" Overflow Exist");
		}
		else{
			return ("No Overflow", sum);
		}
	}
}

```
