// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    /*
        You pay gas spent * gas price amount of ether.
            - gas is a unit of computation
            - gas spent is the total amount of gas used in a transaction
            - gas price is how much ether you are willing to pay per gas
        Transactions with higher gas price have higher priority to be included in a block.
        Unspent gas will be refunded.

        There are 2 upper bounds to the amount of gas you can spend.
            - gas limit is the max amount of gas you're willing to use for your transaction, set by you
            - block gas limit is the max amount of gas allowed in a block, set by the network
    */
    uint256 public n = 1;

    function run() public {
        while (true) {
            n += 1;
        }
    }
}
