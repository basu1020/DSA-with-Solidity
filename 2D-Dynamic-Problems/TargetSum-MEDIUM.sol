//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract TargetSum {

    mapping(uint256 => mapping(uint256 => uint256)) dp;  //index => total => no of solutions from that (index, total) point.

    function findTargetSum(uint256[] memory nums, uint256 target) public returns (uint256) {
        return backtracking(0, 0, nums, target);
    }

    function backtracking(uint256 i, uint256 total, uint256[] memory nums, uint256 target) internal returns(uint256) {
        
        unchecked {
        if (i == nums.length) { return total == target ? 1 : 0; }

        if (dp[i][total] != 0) { return dp[i][total]; }

        dp[i][total] = backtracking(i + 1, total + nums[i], nums, target) + backtracking(i + 1, total - nums[i], nums, target);

        return dp[i][total];
        }
    }
}