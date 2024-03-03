# ERC20 Token Project using Foundry Framework

This project is a simple implementation of an ERC20 token using the Foundry.
The project is focused on creating simple test, deploy and verify the ERC20 contract on Sepolia Network.

## Setup

You need to set up your .env file with the format that provided in .env.example

## Test

```bash
forge test
```

## Deploy

```bash
forge script ./script/DeployToken.s.sol --rpc-url $SEPOLIA_RPC --broadcast
```

## Deploy and Verify

```bash
forge script ./script/DeployToken.s.sol --rpc-url $SEPOLIA_RPC --broadcast --verify
```
