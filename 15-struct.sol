// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    // Struct can be declared outside of a contract and imported in another contract
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata text) public {
        /*
            Three ways to initialize a struct:
                - call it like a function
                - key value mapping
                - initialize an empty struct and then update it
        */
        todos.push(Todo(text, false));

        todos.push(Todo({text: text, completed: false}));

        Todo memory todo;
        todo.text = text;
        todos.push(todo);
    }

    // Solidity automatically created a getter for "todos" so you don't actually need this function
    function get(uint256 i) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[i];
        return (todo.text, todo.completed);
    }

    function updateText(uint256 i, string calldata text) public {
        Todo storage todo = todos[i];
        todo.text = text;
    }

    function toggleCompleted(uint256 i) public {
        Todo storage todo = todos[i];
        todo.completed = !todo.completed;
    }
}
