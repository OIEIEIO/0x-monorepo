pragma solidity ^0.5.5;


interface IStakingEvents {

    event StakeMinted(
        address owner,
        uint256 amount
    );

    event StakeBurned(
        address owner,
        uint256 amount
    );

    event PoolCreated(
        bytes32 poolId,
        address operatorAddress,
        uint8 operatorShare
    );

    event ExchangeAdded(
        address exchangeAddress
    );

    event ExchangeRemoved(
        address exchangeAddress
    );

    /// @dev Emitted by MixinScheduler when the epoch is changed.
    /// @param epoch The epoch we changed to.
    /// @param startTimeInSeconds The start time of the epoch.
    /// @param earliestEndTimeInSeconds The earliest this epoch can end.
    event EpochChanged(
        uint64 epoch,
        uint64 startTimeInSeconds,
        uint64 earliestEndTimeInSeconds
    );

     /// @dev Emitted by MixinScheduler when the timelock period is changed.
     /// @param timelockPeriod The timelock period we changed to.
     /// @param startEpoch The epoch this period started.
     /// @param endEpoch The epoch this period ends.
    event TimelockPeriodChanged(
        uint64 timelockPeriod,
        uint64 startEpoch,
        uint64 endEpoch
    );

    /// @dev Emitted by MixinExchangeFees when rewards are paid out.
    /// @param totalActivePools Total active pools this epoch.
    /// @param totalFeesCollected Total fees collected this epoch, across all active pools.
    /// @param totalWeightedStake Total weighted stake attributed to each pool. Delegated stake is weighted less.
    /// @param totalRewardsPaid Total rewards paid out across all active pools.
    /// @param initialContractBalance Balance of this contract before paying rewards.
    /// @param finalContractBalance Balance of this contract after paying rewards.
    event RewardsPaid(
        uint256 totalActivePools,
        uint256 totalFeesCollected,
        uint256 totalWeightedStake,
        uint256 totalRewardsPaid,
        uint256 initialContractBalance,
        uint256 finalContractBalance
    );

    /// @dev Emitted by MixinOwnable when the contract's ownership changes
    /// @param newOwner New owner of the contract
    event OwnershipTransferred(
        address newOwner
    );
}
