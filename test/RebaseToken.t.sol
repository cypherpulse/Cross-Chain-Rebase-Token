//SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {RebaseToken} from "../src/RebaseToken.sol";
import {Vault} from "../src/Vault.sol";
import {IRebaseToken} from "../src/interfaces/IRebaseToken.sol";

contract RebaseTokenTest is Test {
    RebaseToken private rebaseToken;
    Vault private vault;

    address public owner = makeAddr("owner");
    address public user = makeAddr("user");

    function setUp() public {
        // Impersonate the 'owner' address for deployments and role granting
        vm.startPrank(owner);

        rebaseToken = new RebaseToken();

        // Deploy Vault: requires IRebaseToken.
        // Direct casting (IRebaseToken(rebaseToken)) is invalid.
        // Correct way: cast rebaseToken to address, then to IRebaseToken.
        vault = new Vault(IRebaseToken(address(rebaseToken)));

        // Grant the MINT_AND_BURN_ROLE to the Vault contract.
        // The grantMintAndBurnRole function expects an address

        rebaseToken.grantMintAndBurnRole(address(vault));

        // Send 1 ETH to the Vault to simulate initial funds.
        // The target address must be cast to 'payable'.
    }
}
