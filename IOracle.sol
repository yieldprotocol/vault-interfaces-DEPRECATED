// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;


interface IOracle {
    /// @dev Return the price.
    function get() external returns (uint256);
}