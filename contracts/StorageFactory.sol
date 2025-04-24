// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;
import {SimpleStorage} from "./SimpleStorage.sol";



contract StorageFactory {
    // type visibility name;
    //this is a state called simpleStorage;
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimplestorageContract () public {
        SimpleStorage newSimpleStorageContracts =  new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContracts);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
       SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
       mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256[] memory) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
         return mySimpleStorage.retrieve();
    }

}