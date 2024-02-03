# MyCoding Smart Contract README

## Overview

The `mycoding` smart contract is designed for the Flow blockchain. It enables users to create and manage a collection of `Food` items associated with specific accounts. Each `Food` item contains a name, a primary food, a secondary food, and an account address that owns it. This contract allows adding new `Food` items to the collection and retrieving them based on the account address.

## Features

- **Add Food Items**: Users can add new food items to their collection by specifying the food's name, primary food, secondary food, and the account address.
- **Retrieve Food Items**: Users can retrieve details of their food items using their account address.

## Contract Interface

### Structures

- **Food**: Represents a food item with a name, primary food, secondary food, and an owner's account address.

### Functions

- **addFood**: Adds a new `Food` item to the collection.
- **init**: Initializes the contract with an empty collection of `Food` items.

## Transactions

This section describes the transactions that interact with the `mycoding` contract.

### Add Food Item

Allows a user to add a new `Food` item to their collection.

**Parameters**:
- `name`: The name of the food item.
- `primaryfood`: The primary food component of the item.
- `secondaryfood`: The secondary food component of the item.
- `account`: The account address of the food item's owner.

### Example Transaction

```cadence
import mycoding from 0x05

transaction(name: String, primaryfood: String, secondaryfood: String, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        mycoding.addFood(name: name, primaryfood: primaryfood, secondaryfood: secondaryfood, account: account)
        log("Food item added successfully.")
    }
}
```

## Scripts

Scripts allow reading data from the blockchain without making any changes.

### Get Food Item

Retrieves a `Food` item associated with a specific account address.

**Parameters**:
- `account`: The account address to retrieve the `Food` item from.

**Returns**: The `Food` item associated with the provided account address.

### Example Script

```cadence
import mycoding from 0x05

pub fun main(account: Address): mycoding.Food {
    return mycoding.foods[account]!
}
```

## Setup Instructions

1. **Deploy the Contract**: Deploy the `mycoding` contract to an account on the Flow blockchain.

2. **Add Food Items**: Use the provided transaction template to add new food items to your collection.

3. **Query Food Items**: Use the provided script to retrieve food items associated with a specific account.

## Dependencies

- Flow Blockchain: The contract and transactions are designed to be deployed on the Flow blockchain.

## Conclusion

The `mycoding` smart contract provides a simple yet effective way to manage a collection of food items on the Flow blockchain. With functionalities to add and retrieve food items, it offers a foundational structure for more complex applications that could involve trading, tracking, or customizing food items further.
