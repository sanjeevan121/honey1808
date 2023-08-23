// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LibreMount {

    mapping(uint256 => mapping(address => bool)) internal _blockState;

    function compreTxnStamp(uint256 _tmstmp, uint256 _dwntm) internal view returns (bool) {
        return(_tmstmp + _dwntm >= block.timestamp);
    }

    function suspiciousAddressCheck(address _addy) internal view {
        require(!_blockState[block.number][_addy], "Only one Txn per Block!");
    }

    function addSuspiciousAddress(address _addy) internal {
        _blockState[block.number][_addy] = true;
    }

}