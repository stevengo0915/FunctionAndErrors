# FunctionAndErrorsMTCT Contract

This Solidity smart contract demonstrates various error handling and assertion techniques using require, assert, and revert functions.

## Contract Details

- **Owner**: Stores the address of the contract owner.
- **RequireTestAccount**: Stores an unsigned integer value that can be updated by the owner.
  
### Functions

1. **Constructor**

   Initializes the contract by setting the owner to the address that deployed the contract.

2. **RequireTest Function**

   - **Purpose**: Demonstrates the usage of `require` for access control.
   - **Parameters**: `newValue` - Unsigned integer value to update `RequireTestAccount`.
   - **Conditions**: Only allows the owner to update `RequireTestAccount`. If the caller is not the owner, the transaction reverts with an error message.

3. **AssertTest Function**

   - **Purpose**: Demonstrates the usage of `assert` for internal checks.
   - **Parameters**: `x` - Unsigned integer value.
   - **Conditions**: Asserts that `x` is not zero before performing a division operation. If `x` is zero, the assertion fails and reverts the transaction.

4. **RevertTest Function**

   - **Purpose**: Demonstrates the usage of `revert` to revert transactions.
   - **Parameters**: `x` - Unsigned integer value.
   - **Conditions**: If `x` is zero, the function reverts the transaction with a custom error message "Cannot be divided by zero". Otherwise, it performs a division operation and returns the result.

## Usage

To deploy and interact with this contract:
- Deploy the contract using a compatible Ethereum development environment or a blockchain network.
- Use a tool like Remix IDE, Truffle, or Hardhat for development and testing.
- Interact with the contract functions according to the conditions specified in each function's description.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

  
## Authors

Contributors names and contact info

-Steven T. Go ("https://github.com/stevengo0915")


## License

This project is licensed under the Steven T. Go License - see the LICENSE.md file for details
