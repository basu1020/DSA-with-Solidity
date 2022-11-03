//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

// Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

contract HouseRobber {
    
    function houseRobber(uint256[] calldata nums) public pure
    returns (uint256) {
        if (nums.length == 1) { return nums[0];}

        uint256[] memory _returningArray = nums;

        for (uint256 i = nums.length - 3; i > 0 ; i--) {
            _returningArray[i] = _returningArray[i] + max(nums[i + 2:]);
        }

        // changing the 0th element of the array
        _returningArray[0] = _returningArray[0] + max(nums[2:]);

        return _returningArray[0] >= _returningArray[1] ? _returningArray[0] : _returningArray[1];
    }

    function max(uint256[] memory numbers) internal pure returns (uint256) {
        require(numbers.length > 0);
        uint256 maxNumber; 

        for (uint256 i = 0; i < numbers.length; i++) {
            if (numbers[i] > maxNumber) {
                maxNumber = numbers[i];
            }
        }
        return maxNumber;
    }

}

// learnings - calldata is read only
// we can only slice arrays stored in calldata.
// we can make changes in the variables refered to the elements stored in calldata.
// write accurate conditions for your for-loop, otherwise it can give inappropiate errors. 