//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./IFuseToken.sol";

contract RateGetter {

    function getRate() public view returns (uint256 rate) {
        rate = IFuseToken(address(0x92897f3De21E2FFa8dd8b3a48D1Edf29B5fCef0e)).exchangeRateHypothetical();
        return rate;
    }

    function getRateStored() public view returns (uint256 rate) {
        rate = IFuseToken(address(0x92897f3De21E2FFa8dd8b3a48D1Edf29B5fCef0e)).exchangeRateStored();
        return rate;
    }
}