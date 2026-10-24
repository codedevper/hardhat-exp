// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.7.0
pragma solidity ^0.8.27;

import {AccessManaged} from "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

contract MyAccessManaged is Pausable, AccessManaged {
    constructor(address initialAuthority) AccessManaged(initialAuthority) {}

    function pause() public restricted {
        _pause();
    }

    function unpause() public restricted {
        _unpause();
    }
}
