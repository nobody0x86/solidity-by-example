// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    function run(uint256 x) public pure returns (uint256) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            // ? is called the ternary operator
            return x < 30 ? 2 : 3;
        }
    }
}
