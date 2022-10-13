# LandManagementSystem
Course project for the course Blockchain Technology CS F452 under Prof. Geetha Kumari

## Problem statement

>You buy a piece of land. Someone else claims to own the land. But the one who sold you the land
>showed you the paperwork. The land registry office earlier said that the owner was rightful. Now
>they say that they made a mistake – it was owned by the other person. You already paid for the
>land – to the first person. The First person goes missing, how does anyone prove who changed
>the land record?

## Solution

```sh
Implement a land management system on a blockchain with the following features.
```

## Features
- Register new users to the system with previously owned property
- The user can buy and sell the property.
- Used PoS (Proof of Stake) consensus algorithm.
- Implementation of Merkle root to calculate the hash of all the transactions in a block.
- To be able to view the transaction history that is related to a property.

## Transaction structure:
- Buyer ID/name
- Seller ID/name
- Property ID/name
- Amount
- Timestamp of the transaction

## Block structure:
- Timestamp
- Merkle root
- Hash of the previous block

## Tech Used
- Python 
- 
## Members:
>- Chirag Gadia 2020A7PS1721H
>- Vaibhav Nemani 2020A7PS2195H
>- Arpit Gupta 2020A8PS2216H
>- Jai Sehgal 2020A7PS20891H


