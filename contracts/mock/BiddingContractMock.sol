// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../MetaShoesAuction.sol";

contract BiddingContractMock {
    MetaShoesAuction public auctionContract;

    constructor(MetaShoesAuction _auctionContract) public {
        auctionContract = _auctionContract;
    }

    function bid(uint256 _garmentTokenId) external payable {
        auctionContract.placeBid{value: msg.value}(_garmentTokenId);
    }
}
