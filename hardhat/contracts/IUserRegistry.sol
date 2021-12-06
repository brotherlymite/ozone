pragma solidity ^0.8.0;

interface IUserRegistry {
    function isVerifiedUser(address _user) external view returns (bool);
}
