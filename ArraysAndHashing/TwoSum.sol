// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract TwoSum {
    mapping(uint256 => uint256) prevMap;

    function twoSum(uint256[] memory nums, uint256 target) public pure returns(uint256) {
        for (uint256 i = 0; i < nums.length; i++) {
            uint256 diff = target - nums[i];
            if (prevMap[diff] == true) {
                return [prevMap[diff], i]
            }
            prevMap[nums[i]] = i;
        }
    }
}