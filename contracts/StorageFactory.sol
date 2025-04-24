// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;
import {SimpleStorage} from "./SimpleStorage.sol";



contract StorageFactory {
    // type visibility name;
    // Declare a dynamic array to store deployed SimpleStorage contract instances
    SimpleStorage[] public listOfSimpleStorageContracts;

    // Function to create a new instance of the SimpleStorage contract
    // The new contract is deployed and stored in the array
    function createSimplestorageContract () public {
        SimpleStorage newSimpleStorageContracts =  new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContracts);
    }

     // Function to store a new value in a specific SimpleStorage contract (by index)
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
       SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
       mySimpleStorage.store(_newSimpleStorageNumber);
    }

    // Function to retrieve the stored values from a specific SimpleStorage contract (by index)
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256[] memory) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
         return mySimpleStorage.retrieve();
    }

}