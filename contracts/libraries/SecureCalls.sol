// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SecureCalls {
    function checkCaller(address sender, address _origin) internal pure {
        require(sender == _origin, "Caller is not the original caller");
    }
}