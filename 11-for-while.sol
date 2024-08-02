// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    function run() public pure {
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 4) {
                // Exit loop with break
                break;
            }
        }

        uint256 j;
        while (j < 10) {
            j++;
        }

        uint256 k;
        do {
            k++;
        } 
        while (k < 10);
    }
}
