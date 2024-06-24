// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorContract {
    uint public value;

    function setValue(uint _value) public {
        require(_value > 0 , "Value must be greater than 0.");

        assert(_value != value);

        value = _value;
    }

    function performDivision(uint _numerator, uint _denominator) public pure returns (uint) {
        require(_denominator != 0, "Cannot be divided by zero.");

        if (_numerator % _denominator != 0) {
            revert("Numerator must be divisible by the denominator.");
        }
        return _numerator / _denominator;

    }
}
   