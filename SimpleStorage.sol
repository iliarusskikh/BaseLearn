// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;
 
contract SimpleStorage {
    uint8 public age;
    uint8 public cars;
    constructor(uint8 _age, uint8 _cars) {
        age = _age;
        cars = _cars;
    }

    function updateNumberOfCars(uint8 _numberOfCars) public {
        cars = _numberOfCars;
    }

    function increaseAge() public {
        age++;
    }

    function adminSetAge(uint8 _age) public {
        age = _age;
    }

    //memory
        // Declare a state variable to store data in storage
    uint256 public storedData;//storage

    // Function to update the storedData variable in memory
    function updateData(uint256 newData) public 
    {
        // Declare a memory variable to store the new data
        uint256 tempData = newData; //memory, auto value, will be deleted after execution

        // Assign the value of the memory variable to the storage variable
        storedData = tempData;
    }

    //stack
    uint256 public result;

    // Less efficient
    function sumLessEfficient(uint256 a, uint256 b) public {
        uint256 temp = a + b;
        result = temp;
    }

    // More efficient
    function sumMoreEfficient(uint256 a, uint256 b) public {
        result = a + b;
    }

    uint8 z1; // 1 byte
    uint8 z2; // 1 byte used single storage for two variables by compiler ; order matters
    uint256 z3; // 32 bytes

    //vs inefficient example
    uint8 x1; // 1 byte
    uint256 x2; // 32 bytes
    uint8 x3; // 1 byte
}
