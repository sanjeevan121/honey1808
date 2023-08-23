//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract ApproveAndCallFallBack {
  function receiveApproval(address from, uint256 tokens, address token, bytes memory data) virtual public;
}