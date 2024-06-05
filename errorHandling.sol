// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract bank{

    uint balance;


    function deposit( uint  dep) external payable {

         require(dep > 0, "Deposit amount must be greater than zero");

        balance += dep;
    }
   
   function withdraw(uint  amt) external payable {


      if (amt<0 && amt > balance) {
            revert("Withdrawal amount must be greater than zero and less than account balance");
        }

     balance -= amt;
   }

   function checkBalance() external view returns (uint){

    assert(balance>0);
    
    return balance;
   }



}
