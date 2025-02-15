
<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token"></a>

# Module `0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78::dai_token`



-  [Resource `Ownership`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_Ownership)
-  [Resource `Management`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_Management)
-  [Resource `State`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_State)
-  [Struct `MintEvent`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_MintEvent)
-  [Struct `BurnEvent`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_BurnEvent)
-  [Struct `PauseEvent`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_PauseEvent)
-  [Struct `DenylistEvent`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_DenylistEvent)
-  [Constants](#@Constants_0)
-  [Function `name`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_name)
-  [Function `symbol`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_symbol)
-  [Function `decimals`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_decimals)
-  [Function `dai_token_address`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_dai_token_address)
-  [Function `metadata`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_metadata)
-  [Function `total_supply`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_total_supply)
-  [Function `max_supply`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_max_supply)
-  [Function `balance_of`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_balance_of)
-  [Function `deposit`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_deposit)
-  [Function `withdraw`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_withdraw)
-  [Function `mint`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_mint)
-  [Function `burn`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_burn)
-  [Function `burn_from`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_burn_from)
-  [Function `set_pause`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_set_pause)
-  [Function `denylist`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_denylist)
-  [Function `undenylist`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_undenylist)
-  [Function `transfer_ownership`](#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_transfer_ownership)


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



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_Ownership"></a>

## Resource `Ownership`



<pre><code>#[resource_group_member(#[group = <a href="_ObjectGroup">0x1::object::ObjectGroup</a>])]
<b>struct</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_Ownership">Ownership</a> <b>has</b> key
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_Management"></a>

## Resource `Management`



<pre><code>#[resource_group_member(#[group = <a href="_ObjectGroup">0x1::object::ObjectGroup</a>])]
<b>struct</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_Management">Management</a> <b>has</b> key
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_State"></a>

## Resource `State`



<pre><code>#[resource_group_member(#[group = <a href="_ObjectGroup">0x1::object::ObjectGroup</a>])]
<b>struct</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_State">State</a> <b>has</b> key
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_MintEvent"></a>

## Struct `MintEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_MintEvent">MintEvent</a> <b>has</b> drop, store
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_BurnEvent"></a>

## Struct `BurnEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_BurnEvent">BurnEvent</a> <b>has</b> drop, store
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_PauseEvent"></a>

## Struct `PauseEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_PauseEvent">PauseEvent</a> <b>has</b> drop, store
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_DenylistEvent"></a>

## Struct `DenylistEvent`



<pre><code>#[<a href="">event</a>]
<b>struct</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_DenylistEvent">DenylistEvent</a> <b>has</b> drop, store
</code></pre>



<a id="@Constants_0"></a>

## Constants


<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ASSET_NAME"></a>



<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ASSET_NAME">ASSET_NAME</a>: <a href="">vector</a>&lt;u8&gt; = [84, 101, 115, 116, 32, 68, 97, 105, 32, 83, 116, 97, 98, 108, 101, 99, 111, 105, 110];
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ASSET_SYMBOL"></a>



<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ASSET_SYMBOL">ASSET_SYMBOL</a>: <a href="">vector</a>&lt;u8&gt; = [116, 68, 65, 73];
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_DECIMALS"></a>



<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_DECIMALS">DECIMALS</a>: u8 = 6;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_DENYLISTED"></a>

The account is denylisted


<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_DENYLISTED">ERROR_DENYLISTED</a>: u64 = 15;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_NOT_OWNER"></a>

The account is not owner


<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_NOT_OWNER">ERROR_NOT_OWNER</a>: u64 = 14;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_PAUSED"></a>

No operations are allowed when contract is paused


<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_PAUSED">ERROR_PAUSED</a>: u64 = 12;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_UNAUTHORIZED"></a>

Caller is not authorized to make this call


<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_UNAUTHORIZED">ERROR_UNAUTHORIZED</a>: u64 = 11;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_UNPAUSED"></a>

Contract is needs to be paused first


<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_ERROR_UNPAUSED">ERROR_UNPAUSED</a>: u64 = 13;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_MAX_SUPPLY"></a>



<pre><code><b>const</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_MAX_SUPPLY">MAX_SUPPLY</a>: u128 = 100000000000000000;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_name"></a>

## Function `name`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_name">name</a>(): <a href="_String">string::String</a>
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_symbol"></a>

## Function `symbol`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_symbol">symbol</a>(): <a href="_String">string::String</a>
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_decimals"></a>

## Function `decimals`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_decimals">decimals</a>(): u8
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_dai_token_address"></a>

## Function `dai_token_address`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_dai_token_address">dai_token_address</a>(): <b>address</b>
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_metadata"></a>

## Function `metadata`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_metadata">metadata</a>(): <a href="_Object">object::Object</a>&lt;<a href="_Metadata">fungible_asset::Metadata</a>&gt;
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_total_supply"></a>

## Function `total_supply`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_total_supply">total_supply</a>(): u128
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_max_supply"></a>

## Function `max_supply`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_max_supply">max_supply</a>(): u128
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_balance_of"></a>

## Function `balance_of`



<pre><code>#[view]
<b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_balance_of">balance_of</a>(<a href="">account</a>: <b>address</b>): u64
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_deposit"></a>

## Function `deposit`



<pre><code><b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_deposit">deposit</a>&lt;T: key&gt;(store: <a href="_Object">object::Object</a>&lt;T&gt;, fa: <a href="_FungibleAsset">fungible_asset::FungibleAsset</a>, transfer_ref: &<a href="_TransferRef">fungible_asset::TransferRef</a>)
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_withdraw"></a>

## Function `withdraw`



<pre><code><b>public</b> <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_withdraw">withdraw</a>&lt;T: key&gt;(store: <a href="_Object">object::Object</a>&lt;T&gt;, amount: u64, transfer_ref: &<a href="_TransferRef">fungible_asset::TransferRef</a>): <a href="_FungibleAsset">fungible_asset::FungibleAsset</a>
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_mint"></a>

## Function `mint`



<pre><code><b>public</b> entry <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_mint">mint</a>(minter: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64)
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_burn"></a>

## Function `burn`



<pre><code><b>public</b> entry <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_burn">burn</a>(minter: &<a href="">signer</a>, from: <b>address</b>, amount: u64)
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_burn_from"></a>

## Function `burn_from`



<pre><code><b>public</b> entry <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_burn_from">burn_from</a>(minter: &<a href="">signer</a>, store: <a href="_Object">object::Object</a>&lt;<a href="_FungibleStore">fungible_asset::FungibleStore</a>&gt;, amount: u64)
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_set_pause"></a>

## Function `set_pause`



<pre><code><b>public</b> entry <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_set_pause">set_pause</a>(admin: &<a href="">signer</a>, paused: bool)
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_denylist"></a>

## Function `denylist`



<pre><code><b>public</b> entry <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_denylist">denylist</a>(admin: &<a href="">signer</a>, <a href="">account</a>: <b>address</b>)
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_undenylist"></a>

## Function `undenylist`



<pre><code><b>public</b> entry <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_undenylist">undenylist</a>(admin: &<a href="">signer</a>, <a href="">account</a>: <b>address</b>)
</code></pre>



<a id="0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_transfer_ownership"></a>

## Function `transfer_ownership`



<pre><code><b>public</b> entry <b>fun</b> <a href="dai.md#0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78_dai_token_transfer_ownership">transfer_ownership</a>(admin: &<a href="">signer</a>, new_owner: <b>address</b>)
</code></pre>
