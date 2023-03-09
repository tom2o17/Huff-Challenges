// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "lib/forge-std/src/console.sol";

contract C1 is Test {
    address instance;
    function setUp() public {
        instance = HuffDeployer.deploy("C1");
    }

    function test() public {
        ( , bytes memory res) = instance.call(abi.encode(4));
        console.logBytes(res);
    }
}