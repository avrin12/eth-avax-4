# Secure Token Smart Contract for Gaming Platform

The Secure Token contract is an ERC20 token smart contract designed to provide various functionalities for players in the Gaming platform. The contract enables the following features:

## Features

1. **Mint Secure Tokens**: The platform owner can create new secure tokens and distribute them as rewards to players. Only the contract owner has the authority to mint secure tokens.

2. **Transfer Secure Tokens**: Players can transfer their secure tokens to others by specifying the recipient's address and the amount of secure tokens to transfer.

3. **Check Token Balance**: Players can check their secure token balance at any time using the `checkTokenBalance` function.

4. **Add Game Item**: The owner can add game items that players can purchase using their secure tokens, subject to available funds and allowances.

5. **Get Item Secure Price**: Players can check the price of items available in the menu using the `getItemSecurePrice` function.

6. **Burn Secure Tokens**: Token holders can burn their own secure tokens if they are no longer needed, using the `burnSecureTokens` function.

7. **Redeem Game Items**: Players can redeem game items by paying the required secure tokens. The `redeemGameItem` function handles the redemption process.

## Dependencies

Before compiling and deploying the secure token smart contract, make sure to import the required dependencies:

```solidity
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
```

# Compiling and Deploying

To compile and deploy the secure token smart contract, follow these steps:

Open the Remix IDE (https://remix.ethereum.org/).

Create a new Solidity file.

Copy and paste the smart contract code into the file.

Make sure you have selected the appropriate compiler version (e.g., pragma solidity 0.8.18;).

Click the "Compile" button in Remix to compile the smart contract.

Once compiled successfully, go to the "Deploy & Run Transactions" tab.

Choose the appropriate environment (e.g., JavaScript VM, Injected Web3, etc.).

Click the "Deploy" button to deploy the secure token smart contract to the selected environment.

Interacting with the Contract
After deploying the contract, you can interact with its functions using the Remix IDE or other Ethereum-compatible tools. Use the appropriate environment and address to call the functions:

Mint Secure Tokens: Only the contract owner can call the mintSecureTokens function to create and distribute new secure tokens.

Transfer Secure Tokens: Players can initiate secure token transfers using the transferSecureTokens function.

Check Token Balance: Players can view their secure token balance using the checkTokenBalance function.

Add Game Item and Get Item Secure Price: The contract owner can manage game items and their prices using these functions.

Burn Secure Tokens: Token holders can burn their secure tokens using the burnSecureTokens function.

Redeem Game Items: Players can redeem game items by paying the required secure tokens using the redeemGameItem function.






