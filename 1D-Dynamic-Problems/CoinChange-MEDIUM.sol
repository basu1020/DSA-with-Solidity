//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract CoinChange{

    function coinchange(uint256[] memory coins, uint256 amount) public pure returns(uint256) {
        uint256[] memory dp;

        for(uint256 i = 0; i < amount + 2; i++){
            dp[i] = amount + 1;
        }

        for(uint256 a = 1; a < amount + 2; a++){
            for(uint256 c = 0; c < coins.length; c++){
                if (a - coins[c] >= 0){
                    dp[a] = dp[a] < 1 + dp[a - coins[c]] ? dp[a] : 1 + dp[a - coins[c]];
                }
            }
        }

        if (dp[amount] != amount + 1) {
            return dp[amount];
        }
        else {
            return 0;
        }
    }
}