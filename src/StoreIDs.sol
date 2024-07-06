// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StoreIDs {
    // State variables to store ID, name, and symbol
    uint256 public storeIDs; // Public variable to store IDs
    string public storeName; // Public variable to store names
    string public storeSymbol; // Public variable to store symbols

    // Function to set the ID
    function setID(uint256 ids) public {
        storeIDs = ids; // Set the value of storeIDs to the provided ids
    }

    // Function to set the name
    function setName(string memory name) public {
        storeName = name; // Set the value of storeName to the provided name
    }

    // Function to set the symbol
    function setSymbol(string memory symbol) public {
        storeSymbol = symbol; // Set the value of storeSymbol to the provided symbol
    }

    // Function to get the stored ID
    function getID() public view returns (uint256) {
        return storeIDs; // Return the stored value of storeIDs
    }

    // Function to get the stored name
    function getName() public view returns (string memory) {
        return storeName; // Return the stored value of storeName
    }

    // Function to get the stored symbol
    function getSymbol() public view returns (string memory) {
        return storeSymbol; // Return the stored value of storeSymbol
    }
}
