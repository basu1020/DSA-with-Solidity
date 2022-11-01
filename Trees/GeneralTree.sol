//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract GeneralTree {

    struct GeneralTreeNode {
        uint256 data;
        uint256[] children;
        uint256 parent;
    }

    GeneralTreeNode public Tree;

    constructor(){
        Tree.data = 0;
    }

    function addChildren(uint256 _val) public returns(bool) {
        GeneralTreeNode memory _childTree;
        Tree.children.push = _childTree
        
    }

}