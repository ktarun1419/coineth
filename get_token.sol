// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract GetEth
{
    address payable admin;

    constructor(address payable _admin)
    {
        admin = _admin;
    }

    function sendViaCall() public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, ) = admin.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}