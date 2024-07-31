// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Immutable {
    /*
        Immutable variables are like constants.
        Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
    */
    address public immutable MY_ADDRESS;

    constructor() {
        MY_ADDRESS = msg.sender;
    }
}
