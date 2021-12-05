// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract ozone 
{

    address public immutable moderator;

    IERC20 public immutable dai;

    struct RecipientProject
    {
        address projectAddress;
        uint256 donatedAmount;
    }

    struct RecipientProjectMatching {
        address projectAddress;
        uint256 donatedAmount;
        bool isNegativeFunded;
    }

    mapping(address => bool) isUserVerified;
    
    mapping(address => RecipientProject) userProjectDonated;

    mapping(address => RecipientProjectMatching) userMatchingDonated;

    mapping(address => uint256) matchingFundDistribute;

    mapping(address => uint256) userTotalDonated;

    enum FundingState {Initiated, Completed, Distributed}

    FundingState public state = FundingState.Initiated;

    constructor(
        address _moderator,
        IERC20 _dai
    ) {
        moderator = _moderator;
        dai = _dai;
    }

    modifier onlyModerator() {
        require(msg.sender == moderator, "Caller is not the Moderator");
        _;
    }

    function squareRoot(uint y) public pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    // calculateMatchingAmount()

    // donateToProject()

    // donateToMatchingPool()

    // withdrawDonation()

    // mintNFT() { only people who have donated to either Matching Pool or any Project can mint NFT (1 NFT per User) }
    
}