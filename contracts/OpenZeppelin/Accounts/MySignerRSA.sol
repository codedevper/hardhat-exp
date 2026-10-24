// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.7.0
pragma solidity ^0.8.27;

import {Account} from "@openzeppelin/contracts/account/Account.sol";
import {ERC1155Holder} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
import {ERC721Holder} from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {SignerRSA} from "@openzeppelin/contracts/utils/cryptography/signers/SignerRSA.sol";
import {ERC7739} from "@openzeppelin/contracts/utils/cryptography/signers/draft-ERC7739.sol";

contract MySignerRSA is Account, EIP712, ERC7739, SignerRSA, ERC721Holder, ERC1155Holder {
    constructor(bytes memory e, bytes memory n)
        EIP712("MySignerRSA", "1")
        SignerRSA(e, n)
    {}
}
