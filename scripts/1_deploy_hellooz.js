const { ethers, upgrades } = require("hardhat");

async function main(){
    console.log("Deploying HelloOz...");
    const HelloOz = await ethers.getContractFactory("HelloOz");
    const hellooz = await upgrades.deployProxy(HelloOz,["HelloOz"],{kind:'uups',initializer:'initialize'});
    await hellooz.deployed();
    console.log("HelloOz Proxy contract deployed at : ",hellooz.address);
    console.log("HelloOz Implementation contract deployed at : ",await upgrades.erc1967.getImplementationAddress(hellooz.address));
}

main();