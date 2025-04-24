// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;
import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

    function sayHello() public pure returns(string memory){
        return "Hellllooo";
    }
    
    function store (uint256 _newNumber) public override {
        myfavoriteNumber.push(_newNumber + 5);
    }
}