pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

import "./IUserRegistry.sol";

contract UserRegistry is Ownable, IUserRegistry {
    mapping(address => bool) private users;

    event UserAdded(address indexed _user);
    event UserRemoved(address indexed _user);

    function addUser(address _user) external onlyOwner {
        require(_user != address(0), "UserRegistry: User address is zero");
        require(!users[_user], "UserRegistry: User already verified");
        users[_user] = true;
        emit UserAdded(_user);
    }

    function removeUser(address _user) external onlyOwner {
        require(users[_user], "UserRegistry: User is not in the registry");
        delete users[_user];
        emit UserRemoved(_user);
    }

    function isVerifiedUser(address _user)
        external
        view
        override
        returns (bool)
    {
        return users[_user];
    }
}
