# Crowdfunding Smart Contract - README

## Overview

The Crowdfunding smart contract is a Solidity-based Ethereum smart contract designed to facilitate fundraising for various causes. This contract allows campaign creators to set fundraising goals and start campaigns, while other users (funders) can donate to these campaigns. This README provides an overview of the contract, instructions for deploying it using Remix, and screenshots demonstrating its functionality.

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

2. Create a new Solidity file.

3. Copy and paste the Crowdfunding contract code into the editor.

4. Ensure that the compiler version matches the pragma statement at the top of the contract.

5. Compile the contract by selecting the appropriate compiler version in the Remix sidebar and clicking the "Compile" button.

6. Deploy the contract by selecting the "Deploy" button.

7. Connect your Ethereum wallet (e.g., MetaMask) to Remix and deploy the contract to the desired network (I checked its working on VM and then deployed it on Sepolia testnet).

8. Once deployed, you can interact with the contract by calling its functions through Remix's user interface.

## Screenshots
### 1. Contract Deployment:
![Deploy](Screenshots/Deploy.png)

### 2. Campaign Creation: 
![Campaign_Creation1](Screenshots/Campaign_Creation1.png)
<br>
Campaign ID 0
<br>
<br>
<br>
![Campaign_Creation2](Screenshots/Campaign_Creation2.png)
<br>
Campaign ID 1


### 3. Donation Process: 
![ExcessFundTransferred](Screenshots/ExcessFundTransferred.png)
<br>
Entered Value was 2 wei but the contract wanted only 1 wei so the contract transferred only 1 wei(campaign ID 0).
<br>
<br>
<br>

![AmountAlreadyFulfilled](Screenshots/AmountAlreadyFulfilled.png)
<br>
The campaign's fund requirement was already fulfilled so, the donate function didn't execute(campaign ID 0).
<br>
<br>
<br>

![DonatedFully.png](Screenshots/DonatedFully.png)
<br>
The campaign's fund requirement was 123 and the donor wanted to transfer 1 wei so it got transferred(campaign ID 1).
<br>
<br>
<br>

![AlreadyDonated.png](Screenshots/AlreadyDonated.png)
<br>
The donor had already donated in this campaign(campaign ID 1).

### 4. Campaign Visibility: 
![allCampaigns(0).png](Screenshots/allCampaigns(0).png)
<br>
Called allCampaigns array(campaign ID 0).
<br>
<br>
<br>

![allCampaigns(1).png](Screenshots/allCampaigns(1).png)
<br>
Called allCampaigns array(campaign ID 1).
<br>
<br>
<br>

![viewCampaign.png](Screenshots/viewCampaign.png)
<br>
Called viewCampaigns function.