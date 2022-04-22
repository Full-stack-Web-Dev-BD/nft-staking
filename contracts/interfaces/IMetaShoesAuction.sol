// SPDX-License-Identifier: GPLv2

pragma solidity 0.6.12;

/// @dev an interface to interact with the Genesis MONA NFT that will 
interface IMetaShoesAuction {
    function getHighestBidder(uint256 _garmentTokenId) external view returns (
        address payable _bidder,
        uint256 _bid,
        uint256 _lastBidTime
    );
}