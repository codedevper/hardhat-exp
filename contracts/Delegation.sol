// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

contract Delegation {
    string public greet = "Hello World!";

    event Log(string message);

    function initialize() external payable {
        emit Log("Hello, world!");
    }

    function ping() external payable {
        emit Log("Pong!");
    }
}
