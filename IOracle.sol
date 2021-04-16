// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface IOracle {

    /**
     * @notice The original source for the date
     * @return The address of the original source
     */
    function source() external view returns (address);

    /**
     * @notice Doesn't refresh the price, but returns the latest value available without doing any transactional operations:
     * eg, the price cached by the most recent call to `get()`.
     * @return price WAD-scaled - 18 dec places
     */
    function peek() external view returns (uint price, uint updateTime);

    /**
     * @notice Does whatever work or queries will yield the most up-to-date price, and returns it (typically also caching it
     * for `peek()` callers).
     * @return price WAD-scaled - 18 dec places
     */
    function get() external returns (uint price, uint updateTime);
}
