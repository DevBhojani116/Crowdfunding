pragma solidity 0.8.0;

contract Crowdfunding
{
    struct Campaign
    {
        address creator;
        string cause;
        string futurePlans;
        uint startDate;
        uint endDate;
        Funder[] funders;
        uint requiredAmount;
        uint raisedAmount;
    }

    struct Funder
    {
        address funder;
        uint donatedAmount;
    }

    Campaign[] campaigns;

    
}
