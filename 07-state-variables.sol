// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    // State variable to store a number
    uint256 public n;

    // You can read from a state variable without sending a transaction
    function get() public view returns (uint256) {
        return n;
    }

    // You need to send a transaction to write to a state variable
    function set(uint256 _n) public {
        n = _n;
    }
}
