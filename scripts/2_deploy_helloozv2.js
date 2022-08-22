const { ethers, upgrades } = require("hardhat");

var proxyAddress = "0xDB56ce2fB33Df13eD8d924922aE17787323319D9";

async function main(){
    console.log("Deploying HelloOz...");
    const HelloOzV2 = await ethers.getContractFactory("HelloOzV2");
    const helloozv2 = await upgrades.upgradeProxy(proxyAddress,HelloOzV2,{kind:'uups'});
    await helloozv2.deployed();
    console.log("HelloOz Proxy contract deployed at : ",helloozv2.address);
    console.log("HelloOz Implementation contract deployed at : ",await upgrades.erc1967.getImplementationAddress(helloozv2.address));
}

main();