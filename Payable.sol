// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Payable {
    // create a payable owner
    // create a function - send ether to contract
    // create a function to deposit ether to contract, withdraw ether by owner, transfer ether to another address

    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function withdraw() public payable {
        uint balance = address(this).balance;

        (bool success, ) = owner.call{value: balance}("");

        require(success, "Withdraw failed");
    }
}
