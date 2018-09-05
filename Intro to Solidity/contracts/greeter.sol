pragma solidity ^0.4.19;


contract Greeter {
    string private greeting;
    address private owner;

    function Greeter(string _greeter) public {
        owner = msg.sender;
        greeting = _greeter;
    }

    function greet() public view returns (string) {
        return greeting;
    }
    
    function change(string _greeter) public returns(bool){
        if(msg.sender == owner){
            greeting = _greeter;
            return true;
        }
        else {
            return false;
        }
    }
}
