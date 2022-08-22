# Upgradeable Smart Contract with SafeMath 

`Q. How to pass arguments to initialize function during deployment?`

1. Here is a project implementing the functionality to :
- Pass arguments to initialize function during deployment
- Upgrade contracts using UUPS Proxy pattern.

`1_deploy_hellooz.js` and `2_deploy_helloozv2.js` will help you with the deploy scripts.

## Terminal commands to execute this project

- Clone the repository by `git clone https://github.com/ishinu/Upgradeable-Smart-Contract-v2-`
- Run `npm install` in terminal.
- (If you have done a few steps to be eligible to deploy your project on Ropsten testnet), you may run :
    - `npx hardhat compile`
    - `env $(cat .env) npx hardhat run --network ropsten scripts/1_deploy_hellooz.js`
    - `env $(cat .env) npx hardhat verify --network ropsten <impladdress>`
    - `Go to proxy address and verify using : Is it a Proxy?`
    - `env $(cat .env) npx hardhat run --network ropsten scripts/2_deploy_helloozv2.js`
    - `env $(cat .env) npx hardhat verify --network ropsten <implv2address>`
    - `Go to proxy address and verify using : Is it a Proxy?`

That's few simple steps. Any doubts? [here is explained in detail in previous repository](https://github.com/ishinu/Re-Entrancy-Hack-Upgradeable-).