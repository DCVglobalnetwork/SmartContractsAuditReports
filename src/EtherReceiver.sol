// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EtherReceiver {
    // Event emitted when Ether is received
    event Received(address indexed sender, uint256 amount);

    // Function to receive Ether
    receive() external payable {
        // Emit the Received event with sender's address and amount of Ether received
        emit Received(msg.sender, msg.value);
    }

    // Function to get the contract's balance
    function getBalance() public view returns (uint256) {
        return address(this).balance; // Return the current balance of the contract
    }
}
