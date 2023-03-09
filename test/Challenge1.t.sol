// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "lib/forge-std/src/console.sol";

contract C1 is Test {
    IC1 instance;
    function setUp() public {
        instance = IC1(HuffDeployer.deploy("C1"));
    }

    function testDeploy() public {
        console.log(address(instance));
    }

    function testBaseBlock() public {
        console.log(block.number);
    }

    function testChallenge() public {
        uint256 result = instance.any();
        console.log(result);
    }
}

interface IC1 {
    function any() external view returns(uint256);
}