// SPDX-License-Identifier: MIT

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
 
pragma solidity ^0.8.18;

contract FundMe {

    uint256 public minimumUsd = 5;

    function fund() public payable {



        require(msg.value > minimumUsd, "Didn't send enough ETH");
    }

    // function withdraw() public {}


    function getVersion() public view returns(uint256) {
        // address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}