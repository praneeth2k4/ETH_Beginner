// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyCustomToken {

    string public tokenName = "MyCustomToken";
    string public tokenSymbol = "MCT";
    uint public totalTokenSupply = 0;

    mapping(address => uint) public tokenBalances;

    function mintTokens(address _address, uint _amount) public {
        totalTokenSupply += _amount;
        tokenBalances[_address] += _amount;
    }

    function burnTokens(address _address, uint _amount) public {
        require(tokenBalances[_address] >= _amount, "Insufficient balance");
        totalTokenSupply -= _amount;
        tokenBalances[_address] -= _amount;
    }
}
