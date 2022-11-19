//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract abc {
    struct Item {
        string itemName;
        string details;
        address payable seller;
        uint id;
        uint itemPrice;
        address customer;
        bool isDelivered;
    }
    Item[] public items;
    uint idNumber=1;

    event registerationDone(string itemName, uint id, address seller );
    event bought( uint id, address customer);
    event itemDelivered(uint id);

    function registerItem( string memory _itemName, string memory _details, uint _price) public {
        require (_price>0, "Price should not be 0!" );
        Item memory object;
        object.itemName=_itemName;
        object.details=_details;
        object.seller=payable(msg.sender);
        object.id=idNumber++;
        object.itemPrice=_price;
        items.push(object);
        emit registerationDone(_itemName, object.id, msg.sender);
    }

    function buyItem( uint _itemID) payable public {
        require(items[_itemID-1].itemPrice==msg.value, "Please enter the correct amount!");
        require(items[_itemID-1].seller!=msg.sender, "Customer and Seller should not be the same!");
        items[_itemID-1].customer=msg.sender;
        emit bought(_itemID, msg.sender);
    }

    function isDeliveryDone(uint _itemID) public {
        require (items[_itemID-1].customer==msg.sender, "The confirmation can be made only by the buyer");
        items[_itemID-1].isDelivered = true;
        items[_itemID-1].seller.transfer(items[_itemID-1].itemPrice);
        emit itemDelivered(_itemID);
    }
}

