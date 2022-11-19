# Blockchain Assignment – 2
## Problem Statement:
Suppose you want to buy some items like spectacles, clothes, etc. the go to place for us is either Amazon or Flipkart. Suppose there is a new website named xyz.com which is offering heavy discounts and there is a website abc.com which is offering high-quality items at the same price as of Amazon. But any normal user will be hesitant to buy any item from abc.com or xyz.com due to the lack of trust (i.e., after payment xyz.com may not deliver the item, etc.) although xyz.com and abc.com are offering better products at a lower price. 
So, you need to try to solve this problem by building a smart contract that sends the amount to xyz.com only when the item has been delivered to the user and off- loading of the item starts only when the user has paid the amount of the item to the smart contract which is deployed on the blockchain.

## Tech Used:
Solidity deployed on Remix IDE

## Structures used:

struct item-

- It is a structure that we have created which contains attributes such as the item name, details, seller, product id, item price, customer, isDelivered.

1. customer attribute is used to uniquely identify the customer who is placing the order for the smart contract.

2. isDelivered is set to true when the customer receives the item from the seller and after this is set to true, the money is transferred from the customer's wallet to the seller's wallet.

The other attributes are self-explanatory.

## Functions used:

- registerItem : registers the item 
- buyItem: customer can buy the item 
- isDeliveryDone: customer can set isDelivered true if the item is brought at the doorstep 
- getItems: displays all the items 

## Working:

Seller registers the item on the website using the registerItem function. When a customer wants to buy one of the items on the frontend, he/she can buy it using the buyItem function. At this point, the amount is deducted from the user but not given to the seller. Once the user receives the item from the seller, he/she calls the isDeliveryDone function which sets the isDelivered variable true. Once it is set to true, the amount is finally transferred to the seller by the smart contract. This is how our code works.  

## Members:

Arpit Gupta (2020A8PS2216H)
Chirag Gadia (2020A7PS1721H)
Jai Sehgal (2020A7PS2089H)
Vaibhav Nemani (2020A7PS2195H)
