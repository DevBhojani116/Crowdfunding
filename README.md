# Crowdfunding Smart Contract

## Introduction

This Solidity smart contract implements a crowdfunding platform on the Ethereum blockchain, allowing users to create campaigns and raise funds for various causes. The contract handles campaign creation, funding, and viewing of available campaigns. It supports multiple campaigns running simultaneously and enforces certain rules and restrictions for campaign creators and funders.

## Features

- **Campaign Creation**: Campaign creators can create and manage new projects, specifying essential details such as the cause, future plans, start date, end date, and required funding amount.

- **Multiple Simultaneous Campaigns**: The contract supports the creation of multiple campaigns running concurrently, each with its own details and funding goals.

- **Funding Campaigns**: Users (funders) can fund the campaigns they are interested in by sending Ether to the contract. Users can fund multiple projects as long as they have sufficient funds.

- **Campaign Deadlines**: Campaign creators can set a deadline for funding their projects, ensuring that funds are raised within a specified timeframe.

- **Funders Restriction**: Funders can contribute to a campaign only once to prevent multiple donations from the same user for the same project.

- **Transparency**: The contract enforces transparency and trust by recording campaign and funding details on the blockchain.

## Getting Started

To interact with this smart contract, follow these steps:

1. **Creating Campaigns**: Campaign creators can call the `createCampaign` function to create new campaigns, specifying campaign details, including the cause, future plans, end date, and required funding amount.

2. **Funding Campaigns**: Funders can fund campaigns by calling the `donate` function, providing the campaign ID and the amount they wish to contribute. Funders can only donate to a campaign once.

3. **Viewing Campaigns**: Use the `viewCampaigns` function to retrieve information about all available campaigns.

## Smart Contract Details

- **Solidity Version**: >=0.8.0

