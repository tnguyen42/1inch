// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0 <=0.8.0;
pragma experimental ABIEncoderV2;

import "./ISafeERC20Extension.sol";
import "./IGasDiscountExtension.sol";

interface IOneInchCaller is ISafeERC20Extension, IGasDiscountExtension {
    struct CallDescription {
        uint256 targetWithMandatory;
        uint256 gasLimit;
        uint256 value;
        bytes data;
    }

    function makeCall(CallDescription memory desc) external;

    function makeCalls(CallDescription[] memory desc) external payable;
}
