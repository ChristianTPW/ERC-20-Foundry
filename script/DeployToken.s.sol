// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {TestERC20Token} from "../src/Token.sol";

contract DeployTokenScript is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PK");

        vm.startBroadcast(privateKey);
        new TestERC20Token("Test Token", "TEST");
        vm.stopBroadcast();
    }
}
