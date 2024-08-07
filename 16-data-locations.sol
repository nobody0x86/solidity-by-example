// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    struct Todo {
        string text;
        bool completed;
    }

    mapping(uint256 => Todo) public todos;

    /*
        Variables are declared as either memory, calldata or storage to explicitly specify the location of the data:
            - memory is used to temporarily store variables during the execution of a function
            - calldata is a special read-only space that contains function arguments
            - storage is used to store data permanently on the blockchain
    */
    function add(uint256[] memory _arr, uint256 n) public pure returns (uint256[] memory) {
        uint256[] memory arr = new uint256[](_arr.length);
        for (uint256 i = 0; i < _arr.length; i ++) {
            arr[i] = _arr[i] + n;
        }
        return arr;
    }

    function updateText(uint256 i, string calldata text) public {
        Todo storage todo = todos[i];
        todo.text = text;
    }

    function toggleCompleted(uint256 i) public {
        _toggleCompleted(todos[i]);
    }

    function _toggleCompleted(Todo storage todo) private {
        todo.completed = !todo.completed;
    }
}
