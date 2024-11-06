// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import {MyToken} from "./MyToken.sol";


contract WrappedMyToken is MyToken {
    constructor(string memory tokenName, string memory tokenSymbol)
    MyToken(tokenName,tokenSymbol){}
    function mintTokenWithSepcificTokenId(address to, uint256 tokenId) public{
        _safeMint(to, tokenId);
    }
}