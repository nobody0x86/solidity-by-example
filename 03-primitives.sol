// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Primitives {
    address public addr;

    bool public b;

    /*
        uint8 ranges from 0 to 2 ** 8 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public u8;
    uint256 public u256;
    // uint is an alias for uint256
    uint public u;

    /*
        int8 ranges from -2 ** 7 to 2 ** 7 - 1
        ...
        int256 ranges from -2 ** 255 to 2 ** 255 - 1
    */
    int8 public i8 = -8;
    int256 public i256 = -256;
    // int is same as int256
    int public i = -256;

    int public min = type(int256).min;
    int public max = type(int256).max;

    /*
        In Solidity, the data type byte represent a sequence of bytes.
        Solidity presents two type of bytes types:
            - fixed-sized byte arrays
            - dynamically-sized byte arrays
        The term bytes in Solidity represents a dynamic array of bytes.
        It's a shorthand for byte[].
    */
    bytes1 b1 = 0xff;   // [11111111]
    bytes2 b2 = 0xff00; // [1111111100000000]
}
