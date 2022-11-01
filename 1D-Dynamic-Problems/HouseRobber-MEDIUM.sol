//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

// Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police

contract HouseRobber {
    
    function houseRobber(uint256[] memory nums) public pure returns(uint256){
        if (nums.length == 1) {
            return nums[0];
        }

        for (uint256 i = nums.length - 3; i >= 0; i--) {
            nums[i] += 1;
        }

        return nums[0] >= nums[1] ? nums[0] : nums[1];
    }
}