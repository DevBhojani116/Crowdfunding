pragma solidity 0.8.19;

contract Crowdfunding
{
    struct Campaign
    {
        address creator;
        string cause;
        string futurePlans;
        uint startDate;
        uint endDate;
        uint requiredAmount;
        uint raisedAmount;
        mapping(address => Funder) funders;
    }

    struct Funder
    {
        address funder;
        uint donatedAmount;
    }

    Campaign[] public campaigns;

    function createCampaign(string memory _cause, string memory _futurePlans, uint _endDate, uint _requiredAmount) public
    {
        require(_requiredAmount>0, "Required amount must be positive");
        require(_endDate>block.timestamp, "Campaign should end after its creation");

        Campaign memory temp = Campaign
        ({
            creator: msg.sender,
            cause: _cause,
            futurePlans: _futurePlans,
            startDate: block.timestamp,
            endDate: _endDate,
            requiredAmount: _requiredAmount,
            raisedAmount: 0
            // funders
        });
    }

    
}
