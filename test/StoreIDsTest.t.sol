// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/StoreIDs.sol";

contract StoreIDsTest is Test {
    StoreIDs public storeIDs;

    function setUp() public {
        storeIDs = new StoreIDs();
    }

    function testSetStoreIDs(uint256 x) public {}
}
