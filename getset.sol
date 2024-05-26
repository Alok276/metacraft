// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract HelloWorld{
    string public a;
    int public b;
    bool public c;
    address public d;


     function word(string memory a_a) public returns(string memory){
        a = a_a;
        return a;
    }

    function  word1(int b_b) public  returns(int){
        b= b_b;
        return b;
    }

    function  word2(bool c_c) public  returns(bool){
            c= c_c;
            return c;
        }

         function  word3(address d_d) public  returns(address){
            d= d_d;
            return d;
        }





}

