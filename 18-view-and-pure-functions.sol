// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    uint256 public count;

    // Promise not to modify the state
    function increase(uint256 n) public view returns (uint256) {
        return count + n;
    }

    // Promise not to modify or read from the state
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}
