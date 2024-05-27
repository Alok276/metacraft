# Simple Contract in solidity
A simple contract in remix comiler for solidity

## Description

REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.

## Getting Started

### Installing

Using a remix compiler
### Executing program

* How to run the program
* Step-by-step bullets
```
Compile (Ctrl+s)
deploy
Test
```

## Help

Any advise for common problems or issues.
```
Compile (Ctrl+s)
deploy
```

## Authors

Alok Dangwal


ex. Dominique Pizzie  
ex. [@DomPizzie](https://twitter.com/dompizzie)


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
