
<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token"></a>

# Module `0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e::usdc_token`



-  [Resource `Ownership`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_Ownership)
-  [Resource `Management`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_Management)
-  [Resource `State`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_State)
-  [Struct `MintEvent`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_MintEvent)
-  [Struct `BurnEvent`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_BurnEvent)
-  [Struct `PauseEvent`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_PauseEvent)
-  [Struct `DenylistEvent`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_DenylistEvent)
-  [Constants](#@Constants_0)
-  [Function `name`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_name)
-  [Function `symbol`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_symbol)
-  [Function `decimals`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_decimals)
-  [Function `usdc_token_address`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_usdc_token_address)
-  [Function `metadata`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_metadata)
-  [Function `total_supply`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_total_supply)
-  [Function `max_supply`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_max_supply)
-  [Function `balance_of`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_balance_of)
-  [Function `deposit`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_deposit)
-  [Function `withdraw`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_withdraw)
-  [Function `mint`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_mint)
-  [Function `burn`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_burn)
-  [Function `burn_from`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_burn_from)
-  [Function `set_pause`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_set_pause)
-  [Function `denylist`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_denylist)
-  [Function `undenylist`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_undenylist)
-  [Function `transfer_ownership`](#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_transfer_ownership)


<pre><code><b>use</b> <a href="">0x1::dispatchable_fungible_asset</a>;
<b>use</b> <a href="">0x1::event</a>;
<b>use</b> <a href="">0x1::function_info</a>;
<b>use</b> <a href="">0x1::fungible_asset</a>;
<b>use</b> <a href="">0x1::object</a>;
<b>use</b> <a href="">0x1::option</a>;
<b>use</b> <a href="">0x1::primary_fungible_store</a>;
<b>use</b> <a href="">0x1::signer</a>;
<b>use</b> <a href="">0x1::string</a>;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_Ownership"></a>

## Resource `Ownership`



<pre><code>#[resource_group_member(#[group = <a href="_ObjectGroup">0x1::object::ObjectGroup</a>])]
<b>struct</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_Ownership">Ownership</a> <b>has</b> key
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_Management"></a>

## Resource `Management`



<pre><code>#[resource_group_member(#[group = <a href="_ObjectGroup">0x1::object::ObjectGroup</a>])]
<b>struct</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_Management">Management</a> <b>has</b> key
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_State"></a>

## Resource `State`



<pre><code>#[resource_group_member(#[group = <a href="_ObjectGroup">0x1::object::ObjectGroup</a>])]
<b>struct</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_State">State</a> <b>has</b> key
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_MintEvent"></a>

## Struct `MintEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_MintEvent">MintEvent</a> <b>has</b> drop, store
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_BurnEvent"></a>

## Struct `BurnEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_BurnEvent">BurnEvent</a> <b>has</b> drop, store
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_PauseEvent"></a>

## Struct `PauseEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_PauseEvent">PauseEvent</a> <b>has</b> drop, store
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_DenylistEvent"></a>

## Struct `DenylistEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_DenylistEvent">DenylistEvent</a> <b>has</b> drop, store
</code></pre>



<a id="@Constants_0"></a>

## Constants


<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ASSET_NAME"></a>



<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ASSET_NAME">ASSET_NAME</a>: <a href="">vector</a>&lt;u8&gt; = [84, 101, 115, 116, 32, 85, 83, 68, 32, 67, 111, 105, 110];
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ASSET_SYMBOL"></a>



<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ASSET_SYMBOL">ASSET_SYMBOL</a>: <a href="">vector</a>&lt;u8&gt; = [116, 85, 83, 68, 67];
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_DECIMALS"></a>



<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_DECIMALS">DECIMALS</a>: u8 = 6;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_DENYLISTED"></a>

The account is denylisted


<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_DENYLISTED">ERROR_DENYLISTED</a>: u64 = 15;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_NOT_OWNER"></a>

The account is not owner


<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_NOT_OWNER">ERROR_NOT_OWNER</a>: u64 = 14;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_PAUSED"></a>

No operations are allowed when contract is paused


<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_PAUSED">ERROR_PAUSED</a>: u64 = 12;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_UNAUTHORIZED"></a>

Caller is not authorized to make this call


<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_UNAUTHORIZED">ERROR_UNAUTHORIZED</a>: u64 = 11;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_UNPAUSED"></a>

Contract is needs to be paused first


<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_ERROR_UNPAUSED">ERROR_UNPAUSED</a>: u64 = 13;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_MAX_SUPPLY"></a>



<pre><code><b>const</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_MAX_SUPPLY">MAX_SUPPLY</a>: u128 = 100000000000000000;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_name"></a>

## Function `name`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_name">name</a>(): <a href="_String">string::String</a>
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_symbol"></a>

## Function `symbol`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_symbol">symbol</a>(): <a href="_String">string::String</a>
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_decimals"></a>

## Function `decimals`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_decimals">decimals</a>(): u8
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_usdc_token_address"></a>

## Function `usdc_token_address`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_usdc_token_address">usdc_token_address</a>(): <b>address</b>
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_metadata"></a>

## Function `metadata`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_metadata">metadata</a>(): <a href="_Object">object::Object</a>&lt;<a href="_Metadata">fungible_asset::Metadata</a>&gt;
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_total_supply"></a>

## Function `total_supply`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_total_supply">total_supply</a>(): u128
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_max_supply"></a>

## Function `max_supply`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_max_supply">max_supply</a>(): u128
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_balance_of"></a>

## Function `balance_of`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_balance_of">balance_of</a>(<a href="">account</a>: <b>address</b>): u64
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_deposit"></a>

## Function `deposit`



<pre><code><b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_deposit">deposit</a>&lt;T: key&gt;(store: <a href="_Object">object::Object</a>&lt;T&gt;, fa: <a href="_FungibleAsset">fungible_asset::FungibleAsset</a>, transfer_ref: &<a href="_TransferRef">fungible_asset::TransferRef</a>)
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_withdraw"></a>

## Function `withdraw`



<pre><code><b>public</b> <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_withdraw">withdraw</a>&lt;T: key&gt;(store: <a href="_Object">object::Object</a>&lt;T&gt;, amount: u64, transfer_ref: &<a href="_TransferRef">fungible_asset::TransferRef</a>): <a href="_FungibleAsset">fungible_asset::FungibleAsset</a>
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_mint"></a>

## Function `mint`



<pre><code><b>public</b> entry <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_mint">mint</a>(minter: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64)
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_burn"></a>

## Function `burn`



<pre><code><b>public</b> entry <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_burn">burn</a>(minter: &<a href="">signer</a>, from: <b>address</b>, amount: u64)
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_burn_from"></a>

## Function `burn_from`



<pre><code><b>public</b> entry <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_burn_from">burn_from</a>(minter: &<a href="">signer</a>, store: <a href="_Object">object::Object</a>&lt;<a href="_FungibleStore">fungible_asset::FungibleStore</a>&gt;, amount: u64)
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_set_pause"></a>

## Function `set_pause`



<pre><code><b>public</b> entry <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_set_pause">set_pause</a>(admin: &<a href="">signer</a>, paused: bool)
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_denylist"></a>

## Function `denylist`



<pre><code><b>public</b> entry <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_denylist">denylist</a>(admin: &<a href="">signer</a>, <a href="">account</a>: <b>address</b>)
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_undenylist"></a>

## Function `undenylist`



<pre><code><b>public</b> entry <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_undenylist">undenylist</a>(admin: &<a href="">signer</a>, <a href="">account</a>: <b>address</b>)
</code></pre>



<a id="0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_transfer_ownership"></a>

## Function `transfer_ownership`



<pre><code><b>public</b> entry <b>fun</b> <a href="usdc.md#0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e_usdc_token_transfer_ownership">transfer_ownership</a>(admin: &<a href="">signer</a>, new_owner: <b>address</b>)
</code></pre>
