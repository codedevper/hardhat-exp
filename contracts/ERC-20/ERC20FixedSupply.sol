// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20FixedSupply {
    mapping(address account => uint256) private _balances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    constructor(string memory name_, string memory symbol_) {
        _totalSupply += 1000;
        _balances[msg.sender] += 1000;
        _name = name_;
        _symbol = symbol_;
    }
}
