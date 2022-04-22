// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../MetaShoesAuction.sol";

contract MetaShoesAuctionMock is MetaShoesAuction {
    uint256 public nowOverride;

    constructor(
        MetaShoesAccessControls _accessControls,
        IMetaShoesGarmentNFT _garmentNft,
        address payable _platformReserveAddress
    )
    MetaShoesAuction(_accessControls, _garmentNft, _platformReserveAddress)
    public {}

    function setNowOverride(uint256 _now) external {
        nowOverride = _now;
    }

    function _getNow() internal override view returns (uint256) {
        return nowOverride;
    }
}
