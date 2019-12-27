---
layout: default
title: AlkemiNetwork
nav_order: 3
---

# AlkemiNetwork (AlkemiNetwork.sol)

View Source: [contracts/AlkemiNetwork.sol](../contracts/AlkemiNetwork.sol)

**↗ Extends: [LiquidityReserveFactory](LiquidityReserveFactory.md)**

**{{ContractName}}**

This contract manage Alkemi Network on-chain process

## Contract Members
**Constants & Variables**

```js
address public owner;
mapping(address => address[]) public providerReserves;
mapping(address => address[]) public tokenReserves;

```

**Events**

```js
event ReserveCreate(address indexed reserve, address indexed liquidityProvider, address indexed beneficiary, uint256  lockingPeriod, uint256  lockingPrice, uint8  lockingPricePosition);
```

## Modifiers

- [onlyOwner](#onlyowner)

### onlyOwner

Verifies that the caller is the Owner

```js
modifier onlyOwner() internal
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

## Functions

- [()](#)
- [createLiquidityReserve(address _linkToken, address _beneficiary, address _asset, uint256 _lockingPeriod, uint256 _lockingPrice, uint8 _lockingPricePosition)](#createliquidityreserve)
- [providerLiquidityReserves(address _liquidityProvider)](#providerliquidityreserves)
- [tokenLiquidityReserves(address _asset)](#tokenliquidityreserves)
- [setNewOwner(address _owner)](#setnewowner)
- [_setOwner(address _owner)](#_setowner)

### 

```js
function () public nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### createLiquidityReserve

Creates and initialises a new LiquidityReserve

```js
function createLiquidityReserve(address _linkToken, address _beneficiary, address _asset, uint256 _lockingPeriod, uint256 _lockingPrice, uint8 _lockingPricePosition) public nonpayable
returns(address)
```

**Returns**

Address of new Liquidity Reserve

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _linkToken | address |  | 
| _beneficiary | address | earnings beneficiary (address(0) if the earnings goes to the current reserve address) | 
| _asset | address | asset address | 
| _lockingPeriod | uint256 | funds locking period | 
| _lockingPrice | uint256 | release funds when hitting this price | 
| _lockingPricePosition | uint8 | locking price position | 

### providerLiquidityReserves

Get liquidity reserves addresses of a liquidity provider

```js
function providerLiquidityReserves(address _liquidityProvider) public view
returns(address[])
```

**Returns**

active liquidity reserve contract addresses

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _liquidityProvider | address | liquidity provider address | 

### tokenLiquidityReserves

Get liquidity reserves addresses that hold a specific asset

```js
function tokenLiquidityReserves(address _asset) public view
returns(address[])
```

**Returns**

liquidity reserves addresses

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _asset | address | asset address | 

### setNewOwner

Manager can set the address of the new Owner here

```js
function setNewOwner(address _owner) public nonpayable onlyOwner 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _owner | address | Address of the new Owner | 

### _setOwner

```js
function _setOwner(address _owner) internal nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _owner | address |  | 

## Contracts

* [Address](Address.md)
* [AlkemiNetwork](AlkemiNetwork.md)
* [AlkemiOracle](AlkemiOracle.md)
* [AlkemiSettlementMock](AlkemiSettlementMock.md)
* [Buffer](Buffer.md)
* [CBOR](CBOR.md)
* [Chainlink](Chainlink.md)
* [ChainlinkClient](ChainlinkClient.md)
* [ChainlinkOracle](ChainlinkOracle.md)
* [ChainlinkRequestInterface](ChainlinkRequestInterface.md)
* [Context](Context.md)
* [ENSInterface](ENSInterface.md)
* [ENSResolver](ENSResolver.md)
* [ERC20](ERC20.md)
* [ERC20Detailed](ERC20Detailed.md)
* [ERC20Mintable](ERC20Mintable.md)
* [EtherTokenConstantMock](EtherTokenConstantMock.md)
* [IAlkemiSettlement](IAlkemiSettlement.md)
* [IAlkemiToken](IAlkemiToken.md)
* [IERC20](IERC20.md)
* [ILiquidityReserve](ILiquidityReserve.md)
* [ILiquidityReserveFactory](ILiquidityReserveFactory.md)
* [IOracle](IOracle.md)
* [IOracleGuard](IOracleGuard.md)
* [LinkTokenInterface](LinkTokenInterface.md)
* [LinkTokenReceiver](LinkTokenReceiver.md)
* [LiquidityReserve](LiquidityReserve.md)
* [LiquidityReserveFactory](LiquidityReserveFactory.md)
* [LiquidityReserveState](LiquidityReserveState.md)
* [Migrations](Migrations.md)
* [MinterRole](MinterRole.md)
* [Oracle](Oracle.md)
* [OracleGuard](OracleGuard.md)
* [OracleInterface](OracleInterface.md)
* [Ownable](Ownable.md)
* [PointerInterface](PointerInterface.md)
* [Roles](Roles.md)
* [SafeERC20](SafeERC20.md)
* [SafeMath](SafeMath.md)
* [TokenMock](TokenMock.md)