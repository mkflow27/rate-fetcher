//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IFuseToken {
    function exchangeRateHypothetical() external view returns (uint256);
    function exchangeRateStored() external view returns (uint256);
}
