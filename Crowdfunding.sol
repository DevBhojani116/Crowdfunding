pragma solidity 0.8.19;

contract Crowdfunding
{
    constructor() {}
    struct Campaign
    {
        address payable creator;
        uint campaignNumber;
        string cause;
        string futurePlans;
        uint startDate;
        uint endDate;
        uint requiredAmount;
        uint raisedAmount;
    }

    struct Funder
    {
        address funderAddress;
        mapping(uint=>uint) donatedInThis;
        //campaignID => amount donated in this campaign
    }

    
    uint campaignID = 0;
    Campaign[] public allCampaigns; // Array to store all campaigns
    mapping(address=>Funder) funders;


    function createCampaign(string memory _cause, string memory _futurePlans, uint _endDate, uint _requiredAmount) public
    {
        require(_requiredAmount>0, "Required amount must be positive");
        require(_endDate>block.timestamp, "Campaign should end after its creation");

        allCampaigns[campaignID] = 
        Campaign
        ({
            creator: payable(msg.sender),
            campaignNumber: campaignID,
            cause: _cause,
            futurePlans: _futurePlans,
            startDate: block.timestamp,
            endDate: _endDate,
            requiredAmount: _requiredAmount,
            raisedAmount: 0
        });
        campaignID++;
    }

    modifier notEnded(uint campaignId) 
    {
        require(block.timestamp < allCampaigns[campaignId].endDate, "The campaign has ended");
        _;
    }

    modifier positiveAmount(uint amount)
    {
        require(amount>0, "Amount must be postive");
        _;
    }

    function donate(uint _campaignID) public payable notEnded(_campaignID) positiveAmount(msg.value)
    {
        require(_campaignID < campaignID, "Invalid Campaign ID");
        require(address(msg.sender).balance<msg.value, "Insufficient balance in your wallet");

        Funder storage funder = funders[msg.sender];
        require(funder.donatedInThis[campaignID]>0, "You have already donated to this campaign");

        allCampaigns[_campaignID].raisedAmount += msg.value;
        allCampaigns[_campaignID].creator.transfer(msg.value);
        
        funder.donatedInThis[_campaignID] += msg.value;
    }

    function viewCampaigns() public view returns(Campaign[] memory)
    {
        return allCampaigns;
    }
}
