// import "@openzeppelin/upgrades/contracts/Initializable.sol";
// pragma solidity ^0.5.0;
// contract HelloOz is Initializable {
//   string public name;
//   uint256 public dec;
//   uint256 public inc;

//   function initialize(string memory _name) initializer public{
//     name = _name;
//   }
//   function decrement(uint256 x) public returns (uint256) {
//       return dec = x - 1;
//   }
//   function increment(uint256 x) public returns (uint256) {
//       return inc = x + 1;
//   }
// }

pragma solidity ^0.6.0;
import "@openzeppelin/upgrades/contracts/Initializable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol";
contract HelloOz is Initializable {
    string public name;
    uint256 public dec;
    uint256 public inc;
    using SafeMath for uint256;

    function initialize(string memory _name) initializer public {
        name = _name;
    }
function decrement(uint256 x) public returns (uint256) {
        return dec = x.sub(1);
    }
function increment(uint256 x) public returns (uint256) {
        return dec = x.add(1);
    }
}