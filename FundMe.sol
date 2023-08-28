// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FundMe {

    uint256 public myValue = 1;

    function fund() public payable {

        myValue += 2;
        require(msg.value > 1e18, "Didn't send enough ETH");
    }

    // function withdraw() public {}
}