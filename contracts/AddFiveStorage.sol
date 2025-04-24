// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;
import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

    // A simple pure function that returns a greeting string
    function sayHello() public pure returns(string memory){
        return "Hellllooo";
    }
    
    // Override the 'store' function from SimpleStorage
    function store (uint256 _newNumber) public override {
        myfavoriteNumber.push(_newNumber + 5);
    }
}