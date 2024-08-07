// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    // State variables are stored on the blockchain
    string public hi = "Hello World!";

    function run() public view returns (uint256, uint256, address) {
        // Local variables are not saved to the blockchain
        uint256 n = 1;

        // Global variables provide information about the blockchain
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
        return (n, timestamp, sender);
    }
}
