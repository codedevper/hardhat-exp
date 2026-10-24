// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Counter} from "./Counter.sol";
import {ExampleToken} from "./ExampleToken.sol";
import {Delegation} from "./Delegation.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract HelloWorld is Counter, ExampleToken, Delegation, Ownable {
    constructor(address initialOwner)
        Ownable(initialOwner)
    {}

    function signMessage(string memory message) external payable {
        greet = message;
        emit Log(greet);
    }
}
