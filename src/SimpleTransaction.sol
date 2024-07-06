// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleTransaction {
    // Function to send Ether from this contract to another address
    function sendEther(address payable _to, uint256 _amount) public payable {
        // Ensure the contract has enough Ether to send
        require(address(this).balance >= _amount, "Insufficient balance");

        // Send Ether to the specified address
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }

    // Function to deposit Ether into this contract
    receive() external payable {}

    // Function to retrieve the contract's balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
