// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract LinkedList {

    struct LinkedListNode {
        uint256 id;
        uint256 value; 
        uint256 next;  
    }

    LinkedListNode[] public linkedlist;
    
    function insertAtLast(uint256 val) public returns(uint256) {
        if (linkedlist.length > 0) {
            LinkedListNode memory _lastItem;
            _lastItem = linkedlist[linkedlist.length - 1];
            _lastItem.next = val;
            linkedlist[linkedlist.length - 1] = _lastItem;
        }

        LinkedListNode memory _linkedListNode;
        uint256 _linkedListID = linkedlist.length + 1;
        _linkedListNode.id = _linkedListID;
        _linkedListNode.value = val;
        _linkedListNode.next = 0;
        linkedlist.push(_linkedListNode);

        return linkedlist[linkedlist.length - 1].next;
    }

    function deleteAtlast() public returns(bool) {
        require(linkedlist.length >= 1);
        linkedlist.pop();
        linkedlist[linkedlist.length - 1].next = 0;
        return true;
    }

    function getItemAtGivenIndex(uint256 id) public view returns(LinkedListNode memory){
        require(id <= linkedlist.length);
        return linkedlist[id - 1];
    }

}