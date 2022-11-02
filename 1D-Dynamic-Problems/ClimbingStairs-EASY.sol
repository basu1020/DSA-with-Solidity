//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// You are climbing a staircase. It takes n steps to reach the top.
// Each time you can either climb 1 or 2 steps.
// Return in how many distinct ways can you climb to the top.

contract ClimbingStairs {

    function climningStairs(uint256 n) public pure returns(uint256) {

        uint256 one = 1;
        uint256 two = 1;

        for (uint256 i = 0; i < (n - 1); i++) {
            uint256 temp = one;
            one = one + two;
            two = temp;
        }
        return one;
    }
}

