// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    address public owner;
    mapping(address => bool) public hasVoted;
    mapping(string => uint) public votes;
    string[] public candidates;

    constructor(string[] memory candidateNames) {
        owner = msg.sender;
        candidates = candidateNames;
    }

    function vote(uint candidateIndex) public {
        require(!hasVoted[msg.sender], "You have already voted");
        require(candidateIndex < candidates.length, "Invalid candidate index");

        hasVoted[msg.sender] = true;
        votes[candidates[candidateIndex]] += 1;
    }

    function getVotes(uint candidateIndex) public view returns (uint) {
        require(candidateIndex < candidates.length, "Invalid candidate index");
        return votes[candidates[candidateIndex]];
    }

    function assertOwner() public view {
        assert(msg.sender == owner);
    }

    function revertIfNotOwner() public view {
        if (msg.sender != owner) {
            revert("Caller is not the owner");
        }
    }
}
