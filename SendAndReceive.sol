// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract SendAndReceive {
    // different methods to send - send, transfer, call111
    // different methods to receive - receive fallback

    function _useSend(address payable _rec) public payable {
        bool sent = _rec.send(msg.value);
        require(sent, "Not sent");
    }

    function _useTransfer(address payable _rec) public payable {
        _rec.transfer(msg.value);
    }

    function _useCall(address payable _rec) public payable {
        (bool sent, ) = _rec.call{value: msg.value}("");
        require(sent, "Not sent");
    }
}

contract Receiver {
    receive() external payable {}

    fallback() external payable {}
}
