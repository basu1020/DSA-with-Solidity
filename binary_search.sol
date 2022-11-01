//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract BinarySearch {

    function binarySearch(uint256 value, uint256[] memory inpArray) pure public returns(bool) {
        uint256 left_index = 0;
        uint256 right_index = inpArray.length - 1;
        uint256 mid_index = 0;

        while (left_index <= right_index){
            mid_index = (left_index + right_index) / 2;

            if (inpArray[mid_index] > value) {
                right_index = mid_index - 1;
            }

            else if (inpArray[mid_index] < value) {
                left_index = mid_index + 1;
            }

            else {
                return true;
            }
        }
        return false;
    }
}
