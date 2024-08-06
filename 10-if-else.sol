// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    function run(uint256 n) public pure returns (uint256) {
        if (n < 10) {
            return 0;
        } else if (n < 20) {
            return 1;
        } else {
            // The "?" is called the ternary operator
            return n < 30 ? 2 : 3;
        }
    }
}
