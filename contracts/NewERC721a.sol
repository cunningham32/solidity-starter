// SPDX-License-Identifier: MIT
// Creator: Andrew Cunningham

pragma solidity ^0.8.4;

import "erc721a/contracts/ERC721A.sol";

contract NewERC721a is ERC721A {
  constructor() ERC721A("NewERC721a", "NEW") {}

  function mint(uint256 quantity) external payable {
    // _safeMint's second argument now takes in a quantity, not a tokenId.
    _safeMint(msg.sender, quantity);
  }
}