pragma solidity ^0.4.18;

import './ERC721Base.sol';
import './ERC721Enumerable.sol';
import './ERC721Metadata.sol';

contract FullAssetRegistry is ERC721Base, ERC721Enumerable, ERC721Metadata {
  function FullAssetRegistry() public {
  }

  /**
   * @dev Method to check if an asset identified by the given id exists under this DAR.
   * @return uint256 the assetId
   */
  function exists(uint256 assetId) public view returns (bool) {
    return _holderOf[assetId] != 0;
  }

  function decimals() public pure returns (uint256) {
    return 0;
  }
}
