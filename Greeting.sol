 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Greeting{
    function sayHello() pure external returns (string memory){
        return "HelloWorld";
    }
}
//this contract does not store any data. since not accessing a storage its a pure function

//pure functions - does not access the state of a contract
//view functions
//fallback function
