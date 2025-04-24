// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //this is the solidity version

contract SimpleStorage {
    //favoriteNumber get initialized to 0 if no value is given

   uint256[] public myfavoriteNumber; //0
    struct Person {
        uint256 favouriteNumber;
        string name;
    }
    //dynamic 
    Person[] public listOfPeople; //[]
    // Person public pat = Person({ favouriteNumber: 134 , name: "pat"});
    mapping(string => uint256) public nameToFavoriteNumber;

   function store (uint _favoriteNumber) public virtual{
     myfavoriteNumber.push(_favoriteNumber);
   }

   function retrieve() public view returns(uint256[] memory){
    return myfavoriteNumber;
    }

    function addPerson( string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name]  = _favoriteNumber;
    }

}


