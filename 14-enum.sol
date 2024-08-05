// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Example {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in definition of the type
    Status public status;

    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update the status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // Update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // Reset the enum to its first value, 0
    function reset() public {
        delete status;
    }
}
