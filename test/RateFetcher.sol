//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../src/IFuseToken.sol";
import "../src/RateGetter.sol";

import "forge-std/Test.sol";

contract TestRateFetcher is Test {
    address public market;
    RateGetter getter;

    function setUp() public {
        getter = new RateGetter();
    }

    constructor() {
        market = address(0x92897f3De21E2FFa8dd8b3a48D1Edf29B5fCef0e);
    }

    function testGetRate() public returns (uint256 rate) {
        console.log("testGetRate block", block.number);
        uint256 rateHyp = getter.getRate();
        console.log("rate hyp from forwarder contract", rateHyp);
        uint256 rateStored = getter.getRateStored();
        console.log("rate stored from forwarder contract", rateStored);
    }

    function testCall() public view returns (uint256 rate) {
        console.log("testCall block", block.number);
        uint256 rate = IFuseToken(address(market)).exchangeRateHypothetical();
        console.log("rate hyp from direct call", rate);
        uint256 rateStored = IFuseToken(address(market)).exchangeRateStored();
        console.log("rate stored from direct call", rateStored);
    }
}