// SPDX-License-Identifier: Unlicense
pragma solidity =0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "src/CollatzPuzzle.sol";

contract ColatzChallengeSoln is Test {
    
    CollatzPuzzle challenge;
    address soln;

    /// @dev Setup the testing environment.
    function setUp() public {
        challenge = CollatzPuzzle(new CollatzPuzzle());
        soln = HuffDeployer.deploy("Collatz");
        console.log("soln deployed at => ",soln);
        console.logBytes(soln.code);
    }


    function testSoln() public {        
        console.log("isSolved() => ",challenge.callMe(soln));
    }
}