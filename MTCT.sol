// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionAndErrorsMTCT {
    address public owner;
    uint public RequireTestAccount;

    constructor() {
        owner = msg.sender;
    }

    // Function demonstrates require
    function RequireTest(uint newValue) public {
        require(msg.sender == owner, "Caller is not the owner");
        RequireTestAccount = newValue;
    }

    // Function that demonstrates assert
    function AssertTest(uint x) public pure returns (uint) {
        assert(x != 0);
        return 100 / x;
    }

    // Function that demonstrates revert
    function RevertTest(uint x) public pure returns (uint) {
        if (x == 0) {
            revert("Cannot be divided by zero");
        }
        return 100 / x;
    }
}
