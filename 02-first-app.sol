// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    uint256 public count;

    // Function to get the current count
    function get() public view returns (uint256) {
        return count;
    }

    // Function to increment count by 1
    function increase() public {
        count += 1;
        // ++count;
        // count++;
    }

    // Function to decrement count by 1
    function decrease() public {
        // This function will fail if count = 0
        count -= 1;
        // --count;
        // count--;
    }
}
