## Delegatecall
Some developers are afraid of `delegatecall` because they have been told it is “dangerous”. Fear and danger come from not understanding how something works and how to use it safely. For example most of us are not afraid to drive a bike because we understand enough about how it works and we know how to do it safely.

When a contract makes a function call using delegatecall it loads the function code from another contract and executes it as if it were its own code.

When a function is executed with delegatecall these values do not change:

- address(this)
- msg.sender
- msg.value

Reads and writes to state variables happen to the contract that loads and executes functions with delegatecall. Reads and writes never happen to the contract that holds functions that are retrieved.

So if ContractA uses delegatecall to execute a function from ContractB then the following two points are true:

- The state variables in ContractA can be read and written.
- The state variables in ContractB are never read or written.

Both ContractA and ContractB can declare the same state variables, and ContractB’s functions can read and write values to these state variables. But only ContractA’s state variables are ever read or written.

``delegatecall affects the state variables of the contract that calls a function with delegatecall. The state variables of the contract that holds the functions that are borrowed are not read or written.``

## [Example]()
