// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //this is the solidity version

contract SimpleStorage {
    //favoriteNumber get initialized to 0 if no value is given
    uint256[] public myfavoriteNumber; //0


    // Define a struct to group a person's favorite number and name
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // Dynamic array to store multiple Person structs
    Person[] public listOfPeople; //[]

    // Person public pat = Person({ favouriteNumber: 134 , name: "john"});
    mapping(string => uint256) public nameToFavoriteNumber;

    // Function to store a new favorite number in the array
   function store (uint _favoriteNumber) public virtual{
     myfavoriteNumber.push(_favoriteNumber);
   }

    // Function to retrieve all stored favorite numbers
   function retrieve() public view returns(uint256[] memory){
    return myfavoriteNumber;
    }

   // Function to add a new person to the listOfPeople array
    function addPerson( string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name]  = _favoriteNumber;
    }

}


