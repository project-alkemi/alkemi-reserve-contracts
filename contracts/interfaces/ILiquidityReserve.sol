pragma solidity ^0.5.0;


/**
  * @title ILiquidityReserve
  */
contract ILiquidityReserve {

  /**
   * @dev Returns true if the beneficiary is the current reserve.
   */
  function isBeneficiary() external view returns (bool);

  /**
   * @notice Deposit `_value` `_token` to the reserve
   * @param _token Address of the token being transferred
   * @param _value Amount of tokens being transferred
   */
  function deposit(address _token, uint256 _value) external payable;

  function balance(address _token) public view returns (uint256);
}