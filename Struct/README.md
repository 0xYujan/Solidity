## Structs

- Structs in Solidity allows you to create more complicated data types that have multiple properties. You can define your own type by creating a `struct`.
- They are useful for `grouping` together related data.
- Structs can be declared outside of a contract and imported in another contract.

## Defining a Struct
To define a Struct, you must use the `struct` keyword. The `struct` keyword defines a `new data type`, with more than one member. The format of the struct statement is as follows −

```solidity
struct struct_name { 
   type1 type_name_1;
   type2 type_name_2;
   type3 type_name_3;
}
```
<h3>Example</h3>

```solidity
struct Book { 
   string title;
   string author;
   uint book_id;
}
```

## Accessing a Struct and its variable
To access any member of a structure, we use the member access operator (`.`). The member access operator is coded as a period between the structure variable name and the structure member that we wish to access. You would use the struct to define variables of structure type. 

<h3><b>Example<b></h3>
The following example shows how to use a structure in a program.

[Example here](https://github.com/0xYujan/Solidity/blob/765cbc56bd54a4c41176f98412fef223411463e8/Struct/Example.sol)

