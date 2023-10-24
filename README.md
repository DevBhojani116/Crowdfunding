# Crowdfunding Smart Contract - README

## Overview

The Crowdfunding smart contract is a Solidity-based Ethereum smart contract designed to facilitate fundraising for various causes. This contract allows campaign creators to set fundraising goals and start campaigns, while other users (funders) can donate to these campaigns. This README provides an overview of the contract, instructions for deploying it using Remix, and a section to add screenshots demonstrating its functionality.

## Contract Features

### 1. Campaign Creation
- Campaign creators can initiate new campaigns by providing essential details, including the cause, future plans, end date, and the required fundraising amount.
- Each campaign is assigned a unique campaign ID automatically.

### 2. Donation
- Users can contribute to specific campaigns by specifying the campaign ID and the amount they wish to donate.
- Donations are made in Wei.
- If a donation exceeds the campaign's required amount, the contract will return the excess funds to the donor.
- Each donor can donate only once to a particular campaign to prevent double donations.

### 3. Campaign Visibility
- The contract provides a method to view all the campaigns that have been created, making it easy for users to explore ongoing fundraising efforts.

## Deployment in Remix

To deploy the Crowdfunding smart contract in the Remix development environment, follow these steps:

1. Open [Remix](https://remix.ethereum.org/).

2. Create a new Solidity file or open an existing one.

3. Copy and paste the Crowdfunding contract code into the editor.

4. Ensure that the compiler version matches the pragma statement at the top of the contract.

5. Compile the contract by selecting the appropriate compiler version in the Remix sidebar and clicking the "Compile" button.

6. Deploy the contract by selecting the "Deploy and Run Transactions" plugin in Remix, choosing the contract, and providing any required constructor arguments.

7. Connect your Ethereum wallet (e.g., MetaMask) to Remix and deploy the contract to the desired network (e.g., Ropsten, Mainnet).

8. Once deployed, you can interact with the contract by calling its functions through Remix's user interface.

## Screenshots
1. ### Contract Deployment:
![Campaign Creation](Screenshots\Deploy.png)

2. ### Campaign Creation: 
![Campaign Creation](Screenshots\Campaign_Creation1.png)
Campaign ID 0
<br>
<br>
<br>
![Campaign Creation](Screenshots\Campaign_Creation2.png)
Campaign ID 1


3. ### Donation Process: 
![Donation Process](Screenshots\ExcessFundTransferred.png)
Entered Value was 2 wei but the contract wanted only 1 wei so the contract transferred only 1 wei(campaign ID 0).
<br>
<br>
<br>
![Donation Process](Screenshots\AmountAlreadyFulfilled.png)
The campaign's fund requirement was already fulfilled so, the donate function didn't execute(campaign ID 0).
<br>
<br>
<br>
![Donation Process](Screenshots\DonatedFully.png)
The campaign's fund requirement was 123 and the donor wanted to transfer 1 wei so it got transferred(campaign ID 1).
<br>
<br>
<br>
![Donation Process](Screenshots\AlreadyDonated.png)
The donor had already donated in this campaign(campaign ID 1).

4. ### Campaign Visibility: 
![Donation Process](Screenshots\allCampaigns(0).png)
Called allCampaigns array(campaign ID 0).
<br>
<br>
<br>
![Donation Process](Screenshots\allCampaigns(1).png)
Called allCampaigns array(campaign ID 1).
<br>
<br>
<br>
![Donation Process](Screenshots\allCampaigns(1).png)
Called viewCampaigns function.