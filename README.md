# Project Information and Design

A new  Dapp project.

This project was developed from scratch with by Kemal Kağan Orhan. I am very grateful to him for his efforts. You can find it on Github here.["https://github.com/KemalKO240"]

# Installation/running steps

1) Download and install Flutter + Android Studio (or VS Code)

2) Ganache and Truffle must be downloaded and installed

3) Open Ganache and create a new WorkSpace, add the truffle config in the project here

4) The project must be opened with Android Studio or VS Code

5) ' final String _privateKey = ; ' value should be updated, Private key values can be accessed by pressing the key of the top one of the accounts in the accounts section in ganache.

6) Go to the project folder on the console and run the "truffle migrate" command, (Note that contracts are deployed without any problems (it can also be checked on the ganache or contract page))

7) In the project that is open in Android Studio or VS code, pubspec.yaml should be opened and Pub Get should be done.

8) Internet browser should be selected as the platform, (example: Chrome)

9) The project can be Run. (This process may take a few minutes.) (It can be followed from the Run console, no data should be output.)

10) Since the database will be empty at the first startup, press the "first installation" button, then add a fake/artificial product, (this product item will most likely not be visible)

11) Then add the real products: wholesaler, cargo and market data should be added at least 4 pieces in accordance with the format, at least 3 pieces of historical prices should be added in accordance with the format, (This data amount is required for the formation of the chart)

## 1. ABSTRACT

Supply chains plays a very important role in the pricing of grocery products.
People or institutions that affect the prices of products belongs in these supply
chains. However, these factors affecting product prices are not well-known by the
consumer. In this regard, increasing the consumer awareness is very crucial. One of
the best ways to achieve this is Blockchain-based decentralized systems that has
arrived with Industry 5.0. Transparent reflection of the changes product price to the
consumer using the blockchain is discussed in this article.
Utilizing smart contracts, a transparent system bas been designed in which
product prices are tracked and how much these prices are affected by each step has
been shown. In addition, the system assists in the function of comparing different
companies in the same step of the supply chain. By tracking the fluctuations of
product prices over time, it is aimed to clearly show the main reasons for these
fluctuations.
By designing and creating the aforementioned system; its needs methods
and benefits have been shown through this project.

## 2.Design

 As a design, a design has been implemented in which products registered in the database are listed on the screen via the website and mobile application. The functions described below and shown in the Figure are designed to facilitate the user in searching and viewing the products.

- Search Bar: Searches the data pool for a given name or name snippet to reach a certain product and displays the results on the screen.
- Product Detail: It reflects the details of a selected product on the screen. Features of the product, price change graphs in the supply chain, price change graph of the product according to the dates in different markets are shown.
- Adding Product: Adds the information of the selected product to the system. (Only authorized person can access this function.)
- Firmware Update: The information of the existing product is updated. (Only authorized person can access this function.)
- Product Removal: Removes product information from the application. (Only authorized person can access this function.)
- Authorized Login Screen: It provides access to the authorized person who will have high access to the database.

![image](https://user-images.githubusercontent.com/65676107/214400326-91ef421a-07d6-4e31-af5d-5d0312c2bae1.png)

# 3.Methods and Technologies

We will use the Blockchain system as a method and etherheum smart contracts as a technology, Ganache to test and flutter to code. If we explain these methods and technologies one by one:

## 1.) Blockchain System

In short, the blockchain system is a network of hundreds of thousands of computers around the world that does not exist on a single server. In this network, data is kept in the form of a kind of registry. If you want to delete any of these data, it is almost impossible as the data must be deleted from all registered computers as well. This makes the blockchain system a highly secure system. We will be taking full advantage of this security. Because we do not want the product prices to be changed by someone else.

## 2.) Ethereum

While Bitcoin is used only as crypto money in the Blockchain system, Ethereum is used for both crypto money and project development. So if we call Bitcoin blockchain 1.0, Ethereum becomes blockchain 2.0. Using Ethereum's smart contracts, we can automatically add data to blocks. We can do the software for this automatic process using Solidity. For this reason, we had to learn the Solidity language, which does not yet have a course in our school, from scratch for the thesis.

## 3.) Ganache

It is used to quickly run a personal Ethereum blockchain that you can use to run tests, execute commands, and examine the situation while checking how the chain works. Since normal Main networks are very expensive, this application was used to work locally as a test.

## 4.) Smart Contract

Smart contracts briefly; It is the automatic triggering of the software, such as giving a parameter to a function, when a predetermined event occurs. Smart contracts also have terms like regular contracts. Transactions occur when these conditions are met. The difference from normal contracts is that these smart contracts perform the desired transactions automatically, without the need for anyone, through the blockchain, thanks to certain codes. We will also use smart contracts as we aim to reduce workloads (police monitoring) in our operations.

## 5.) Flutter

Flutter is an open source interface software development kit created by Google. It can be used to develop apps for Android, iOS, Windows, Mac, Linux and the web It basically uses the Dart platform. It facilitates the work of programmers/designers with hundreds of widgets it already contains. Flutter is still evolving. While adding new widgets to Flutter every day, Windows compatible version of Flutter 2.10 has also been announced recently.

# 4.System Architecture for Price Tracking of Market Products with Blockchain

The system consists of two layers: Application Layer and Server Layer. It is aimed that the proposed system is user-friendly, fast, accurate and safe. In line with this goal, what needs to be done in the two layers mentioned above are explained in detail under the following headings.

![image](https://user-images.githubusercontent.com/65676107/214400457-c1f99710-8b18-466d-ad67-467a8cdc9dc7.png)

Figure: System Architecture

## Application Layer

The system is intended to be built as an application that users can install on their mobile devices or as a website that they can view via a browser. This provides an advantage in terms of usability. In order to achieve this advantage, a framework is required in which both the website containing the WebAPI service and the mobile application codes can be created. In this context, an application with two different modes that can be used by normal users and software developers has been developed. The working interactive of these modes is shown in the figures below with the Sequence diagram technique.

### a) User Mode

 What the user can do in this mode is limited. You can search and find products. You can see the price information of a product, where and how the product has changed in price until it comes to the market, and you can see the price change of the product on a monthly basis.

![image](https://user-images.githubusercontent.com/65676107/214400573-4c1dbf48-fb78-4d4c-9132-fba1b0c3b585.png)

Figure: User Sequence Diagram

### b) Developer Mode

  In this mode, the user can use the full capabilities of the mode. Additionally, it can add a new product or update the product's information or delete the product. The deletion phase does not actually occur completely. Because in Blockchain, nothing is deleted. We just pretend it was deleted. So we change the data to zero and it looks like it is deleted on the app but it is not actually deleted.

![image](https://user-images.githubusercontent.com/65676107/214400638-0fb524dc-98bb-4ed5-b50d-82a0154f8e89.png)

Figure: Admin Sequence Diagram

## Communication Layer

The communication layer is used to communicate between the application layer and the server layer. Although there is no exact equivalent in a decentralized system, Transaction Call objects created by Contract functions defined in .sol files mostly perform this task. In order to complete the communication, the data must first be fragmented and sent, and then reassembled when recalled. In such systems, this and many similar processes can be considered as the communication layer.

## Server Layer

The server layer is responsible for processing requests and sending results to applications. In this layer, after the requests coming with the web services are checked and the transactions are made, the applications are responded to. This layer is actually the main purpose of the project. In this part, the data transferred to the fixed server in traditional methods is sent to the Blockchain system, which is a completely different decentralized network. Miners process this data in blocks for a fee. In fact, there is no server, only a network, kind of like the internet. In the project, transactions are carried out over this network. This may cause some problems to occur. These problems are mentioned in the title of 'Problems Encountered'.

## 5.Market Product Pricing System Application with Blockchain

![image](https://user-images.githubusercontent.com/65676107/214400741-9fedcbac-fb95-4235-ab36-a9f1932cc638.png)

Figure : Technologies used in system architecture

The software platforms used for the Market Products Price Tracking application given in the Figure can be summarized as follows. Because the Blockchain network is used as the server, the speed may vary. A smart contract that supports version 0.5.9 and above is used in the Solidity language used. The system has been tested via web browser and Android mobile device emulator. The application developed for web browsers and mobile devices with Android operating system was developed via Flutter on the Android Studio platform. Web3, which is used in the communication between the user and the server, is the request protocol of the web services and the response type format is designed as JSON. The development and running details of the application in the Application Layer in the Figure above are explained below.

### User Part

- Product Search Engine

![image](https://user-images.githubusercontent.com/65676107/213800202-7b6d19c6-d5a7-4fb8-b949-593a9081ae5b.png)

- Product related graphics

![image](https://user-images.githubusercontent.com/65676107/213800237-e25f78de-0350-4ef1-81a0-59e2e0fce84c.png)

- More product related graphics

![image](https://user-images.githubusercontent.com/65676107/213800270-e6347108-c691-499f-811b-adaca683395e.png)

- More product related graphics
  
![image](https://user-images.githubusercontent.com/65676107/213800284-4421a095-31c9-4743-b66f-685e6ecc1050.png)

- Product name and description
  
![image](https://user-images.githubusercontent.com/65676107/213800329-1b700059-1a9c-4dfd-8516-78be91e7419b.png)

- Comparison of wholesalers

![image](https://user-images.githubusercontent.com/65676107/213800346-4224b2e0-d1cc-4a13-a7e4-14f1716342d9.png)

- Comparison of courier

![image](https://user-images.githubusercontent.com/65676107/213800365-1943f717-3f67-48b0-a9e6-35be69cdf9b0.png)

- Comparison of markets

![image](https://user-images.githubusercontent.com/65676107/213800380-58a2a2f1-9ef3-4bf4-ad05-8929f4ff3962.png)

- Price time distribution
  
  ![image](https://user-images.githubusercontent.com/65676107/214400947-f795413e-61c9-4426-a3db-1833a70c04d2.png)
  
- General price change
  
![image](https://user-images.githubusercontent.com/65676107/213800395-f1fa7544-0a12-4274-8e2f-8fc1d59736d3.png)

- Developer page
  
![image](https://user-images.githubusercontent.com/65676107/213800411-85996a22-f11c-4cba-9a62-a1c009c6a1ed.png)

- Switch to login page

![image](https://user-images.githubusercontent.com/65676107/213800442-7a70941a-2120-4490-a548-ba34090e5022.png)

- Authorized login page
  
![image](https://user-images.githubusercontent.com/65676107/213800842-34f34539-4ec4-4e95-b827-008bd65f7858.png)

- Switch button to product add page

![image](https://user-images.githubusercontent.com/65676107/213800879-07b2da0e-3840-4190-b5a3-bce8fac843fd.png)

- Product add page
  
![image](https://user-images.githubusercontent.com/65676107/213800904-3534a9fa-0664-46a1-b1cc-ca9b5086532b.png)

- Product information update page

![image](https://user-images.githubusercontent.com/65676107/213800941-58b5523f-14dc-4453-94e9-098afa716d8f.png)

- Product delete button
  
![image](https://user-images.githubusercontent.com/65676107/213801429-abb39f94-9af2-4ea6-ba0f-19d696acdefc.png)

# 6.Future Studies

- Sort products by category, brand, package size, etc. An advanced search engine can be added that can classify and filter such as
- The system can be adapted to be used in other markets.
- A system can be established to ensure that the developer is approved with the crypto wallet while logging into the system.
- Existing graphics can be developed further or new graphics can be added.
- The application can create personal notifications so that the user can follow the price of one or more products.
- The features and capacity of the system can be further upgraded.

# 7.Problems Encountered

These problems can be listed under the following general headings:

## GAS Problems

It is very important that the smart contract is well designed at this stage while working on the uploading of new data to the system and the testing stage during the product addition or product update phase. Because each product to be entered will be subject to a certain GAS fee. This is the biggest problem that needs to be minimized in terms of cost and speed of implementation.

## Solidity Language

The problem is that Solidity is still a new language and doesn't work as well as other languages (like java) that are twenty years old. Many of their problems still persist. In addition, since it is a language to integrate into a decentralized system, it also brings its own problems. Optimization studies that Solidity will experience in the future will minimize or most likely eliminate this situation in the future.

## Standby time

As we mentioned above, the Blockchain system can cause problems in terms of speed, since there is no specific server for processing data. To get rid of this situation, increasing the GAS fee is the first solution that comes to mind. Because the higher the fee, the priority of the miner will shift to that side. In addition, the waiting time is long not only when adding data but also when receiving data from the system. This depends on the volume of the network, the current number of transactions, etc. The waiting time may vary depending on many factors.

## Unable to Delete Data

Although this is one of the main pillars of the project, it also brings some problems. If we explain; If any wrong data is entered, this action cannot be undone because nothing can be deleted in the system. For this situation, solutions should be developed to prevent incorrect entry.
