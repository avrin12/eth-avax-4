// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    mapping(string => uint256) private _itemPrices;

    event ItemRedeem(address indexed player, string item);

    constructor() ERC20("Degen", "DGN") {
        _mint(msg.sender, 100 * 10**decimals());
    }

    function mintTokens(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function transferTokens(address receiver, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer(msg.sender, receiver, amount);
    }

    function checkBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function addItem(string memory item, uint256 price) external onlyOwner {
        require(price > 0, "Price cannot be zero");
        _itemPrices[item] = price;
    }

    function getPrice(string memory item) external view returns (uint256) {
        return _itemPrices[item];
    }

    function burnTokens(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }

    function redeem(string memory item) external {
        uint256 itemPrice = _itemPrices[item];
        require(itemPrice > 0, "Item not available for redemption");
        require(balanceOf(msg.sender) >= itemPrice, "Insufficient balance");

        _transfer(msg.sender, owner(), itemPrice);
        emit ItemRedeem(msg.sender, item);
    }
}
