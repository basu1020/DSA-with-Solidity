//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract BinaryTree {

    struct BinaryTreeNode {
        uint256 data;
        BinaryTreeNode[] children;
        uint256 parent;
    }

    BinaryTreeNode public Tree;

    constructor(uint256 _val){
        Tree.data = _val;

    }

    // function addChildren(uint256 _val) public {
    //     if (_val < Tree.data) {
            
    //     }
    // }

}