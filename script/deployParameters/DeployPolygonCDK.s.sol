// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployPolygonCDK is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: UNSUPPORTED_PROTOCOL,
            weth9: 0xe0F724F534968ed4B7a092e81FF6c6a6F471DeC3,
            seaportV1_5: UNSUPPORTED_PROTOCOL,
            seaportV1_4: UNSUPPORTED_PROTOCOL,
            openseaConduit: UNSUPPORTED_PROTOCOL,
            nftxZap: UNSUPPORTED_PROTOCOL,
            x2y2: UNSUPPORTED_PROTOCOL,
            foundation: UNSUPPORTED_PROTOCOL,
            sudoswap: UNSUPPORTED_PROTOCOL,
            elementMarket: UNSUPPORTED_PROTOCOL,
            nft20Zap: UNSUPPORTED_PROTOCOL,
            cryptopunks: UNSUPPORTED_PROTOCOL,
            looksRareV2: UNSUPPORTED_PROTOCOL,
            routerRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareToken: UNSUPPORTED_PROTOCOL,
            v2Factory: UNSUPPORTED_PROTOCOL,
            v3Factory: 0xc8C8669EfF35660C1fD25105Cb31b7d140ADdb4B,
            pairInitCodeHash: BYTES32_ZERO,
            poolInitCodeHash: 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        });

        unsupported = UNSUPPORTED_PROTOCOL;
    }
}

// forge script --broadcast --rpc-url https://hitesh123:hitesh123@nodeme.testpoly-vali-a7c0ac.zeeve.net/rpc --private-key 63fe8d8db84e88ea3d9620aa9362340ec872df716bd272b13ddfa248bc015e3c --sig 'run()' --legacy script/deployParameters/DeployPolygonCDK.s.sol:DeployPolygonCDK