// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract CustomToken {

    string public tokenName = "ZAPVI";
    string public tokenSymbol = "ZAP";
    uint public totalSupply = 0;

    mapping(address => uint) public tokenBalances;

    function mintTokens(address _address, uint _amount) public {
        totalSupply += _amount;
        tokenBalances[_address] += _amount;
    }

    function burnTokens(address _address, uint _amount) public {
        require(tokenBalances[_address] >= _amount, "Insufficient balance");
        totalSupply -= _amount;
        tokenBalances[_address] -= _amount;
    }
}
