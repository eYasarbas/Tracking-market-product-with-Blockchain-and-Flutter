//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.5.9;
contract Urunler {

    uint public productCount;
    struct Product {

        uint id ;
        string heading;
        string description;
        string fabrikaFiyat;
        string toptanciData;
        string kargoData;
        string marketData;
        string gecmisData;
    }

    Product[] public products;

    constructor() public{
        productCount = 0 ;
    }


    function createProduct(string memory head,string memory desc,string memory fabrikaFiyat,string memory toptanciData,string memory kargoData,string memory marketData,string memory gecmisData) public{
        products.push(Product(productCount++,head,desc, fabrikaFiyat, toptanciData, kargoData, marketData, gecmisData)) ;

    }

    function updateProduct(uint id,string memory head,string memory desc,string memory fabrikaFiyat,string memory toptanciData,string memory kargoData,string memory marketData,string memory gecmisData) public{
        products[id].heading = head ;
        products[id].description = desc ;
        products[id].fabrikaFiyat = fabrikaFiyat;
        products[id].toptanciData = toptanciData;
        products[id].kargoData = kargoData;
        products[id].marketData = marketData;
        products[id].gecmisData = gecmisData;

    }

    function deleteProduct(uint id) public{
        delete products[id];
    }

}