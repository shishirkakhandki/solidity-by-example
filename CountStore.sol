// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Counter {
    // uint public count;

    // // Function to get the current count
    // function get() public view returns (uint) {
    //     return count;
    // }

    // // Function to increment count by 1
    // function inc() public {
    //     count += 1;
    // }

    // // Function to decrement count by 1
    // function dec() public {
    //     count -= 1;
    // }

    uint public countStore = 0;

    // constructor(uint _countStore) {
    //     countStore = _countStore;
    // }

    function _incrementCountStore() public returns (uint) {
        countStore++;
        return countStore;
    }

    function _decrementCountStore() public returns (uint) {
        countStore--;
        return countStore;
    }
}
