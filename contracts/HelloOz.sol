//SPDX-License-Identifer:MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract HelloOz is OwnableUpgradeable, UUPSUpgradeable{
    string public name;
    uint256 public dec;
    uint256 public inc;
    using SafeMath for uint256;

    function initialize(string memory _name) initializer public {
        name = _name;
        __Ownable_init();
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function decrement(uint256 x) public returns (uint256) {
        return dec = x.sub(1);
    }
    
    function increment(uint256 x) public returns (uint256) {
        return dec = x.add(1);
    }
}