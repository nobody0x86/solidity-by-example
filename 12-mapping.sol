// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    // Mapping from address to uint256
    mapping(address => uint256) public addrs;

    function get(address addr) public view returns (uint256) {
        /*
            Mapping always returns a value and is not iterable.
            If the value was never set, it will return the default value.
        */
        return addrs[addr];
    }

    function set(address addr, uint256 i) public {
        // Update the value at this address
        addrs[addr] = i;
    }

    function remove(address addr) public {
        // Reset the value to the default value
        delete addrs[addr];
    }
}

contract NestedExample {
    // Mapping from address to another mapping that from uint256 to bool
    mapping(address => mapping(uint256 => bool)) public addrs;

    function get(address addr, uint256 i) public view returns (bool) {
        // You can get values from a nested mapping even when it is not initialized
        return addrs[addr][i];
    }

    function set(address addr, uint256 i, bool b) public {
        addrs[addr][i] = b;
    }

    function remove(address addr, uint256 i) public {
        delete addrs[addr][i];
    }
}
