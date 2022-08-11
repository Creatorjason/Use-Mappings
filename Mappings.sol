//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Maps{
    mapping(uint => uint) public names;
    mapping(uint => bool) public new_names;
    uint[] public checkVal;

    function set(uint _keys, uint _val) external {
        names[_keys] = _val;
        if (!new_names[_keys]){
            new_names[_keys] = true;
            checkVal.push(_keys);
        }
    }
    function first() public view returns(uint){
        return names[checkVal[0]];
    } 
    function last() public view returns(uint){
        return names[checkVal.length - 1];
    }
    function get(uint _val) public view returns(uint){
        return names[_val];
    }
}
