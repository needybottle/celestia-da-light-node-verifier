// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract CoreProtocol {
    address public immutable owner;
    uint256 public totalVolume;

    event StateCommitted(bytes32 indexed rootHash, uint256 blockNumber);

    constructor() {
        owner = msg.sender;
    }

    function commitState(bytes32 rootHash, uint256 blockNumber) external {
        require(msg.sender == owner, "Unauthorized");
        emit StateCommitted(rootHash, blockNumber);
    }
}
