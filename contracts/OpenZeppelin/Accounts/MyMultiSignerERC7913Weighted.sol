// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.7.0
pragma solidity ^0.8.27;

import {Account} from "@openzeppelin/contracts/account/Account.sol";
import {ERC1155Holder} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
import {ERC721Holder} from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {MultiSignerERC7913Weighted} from "@openzeppelin/contracts/utils/cryptography/signers/MultiSignerERC7913Weighted.sol";
import {ERC7739} from "@openzeppelin/contracts/utils/cryptography/signers/draft-ERC7739.sol";

contract MyMultiSignerERC7913Weighted is Account, EIP712, ERC7739, MultiSignerERC7913Weighted, ERC721Holder, ERC1155Holder {
    constructor(bytes[] memory signers, uint64[] memory weights, uint64 threshold)
        EIP712("MyMultiSignerERC7913Weighted", "1")
        MultiSignerERC7913Weighted(signers, weights, threshold)
    {}

    function setSignerWeights(bytes[] memory signers, uint64[] memory weights)
        public
        onlyEntryPointOrSelf
    {
        _setSignerWeights(signers, weights);
    }

    function addSigners(bytes[] memory signers) public onlyEntryPointOrSelf {
        _addSigners(signers);
    }

    function removeSigners(bytes[] memory signers) public onlyEntryPointOrSelf {
        _removeSigners(signers);
    }

    function setThreshold(uint64 threshold) public onlyEntryPointOrSelf {
        _setThreshold(threshold);
    }
}
