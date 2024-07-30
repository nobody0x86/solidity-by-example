// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Variables {
    // State variables are stored on the blockchain.
    string public greet = "Hello World!";

    function check() public view returns (int8, uint256, address) {
        // Local variables are not saved to the blockchain.
        int8 i = 8;

        // Here are some global variables.
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
        return (i, timestamp, sender);
    }
}
