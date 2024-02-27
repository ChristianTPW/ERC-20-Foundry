// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {TestERC20Token} from "../src/Token.sol";

contract TokenTest is Test {
    TestERC20Token token;

    function setUp() public {
        token = new TestERC20Token("test token", "test");
    }

    function test_initialSetup() public {
        assertEq(token.name(), "test token");
        assertEq(token.symbol(), "test");
    }

    function test_mint() public {
        uint256 initialBalance = token.balanceOf(address(this));
        uint256 mintAmount = 100 ether;

        token.mint(address(this), mintAmount);

        assertEq(token.balanceOf(address(this)), initialBalance + mintAmount);
    }

    function test_burn() public {
        uint256 initialBalance;
        uint256 burnAmount = 10 ether;

        token.mint(address(this), 100 ether);
        initialBalance = token.balanceOf(address(this));
        token.burn(address(this), burnAmount);

        assertEq(token.balanceOf(address(this)), initialBalance - burnAmount);
    }
}
