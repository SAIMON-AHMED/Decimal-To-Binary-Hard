// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ToBinary{

		function toBinary(int256 n) public pure returns (string memory) {
            bytes memory binary = new bytes(8);
            uint256 value;

            if (n < 0) {
                value = uint256(int256(1 << 8) + n);
            } else {
                value = uint256(n);
            }

            for (uint i; i < 8; i++) {
                binary[7 - i] = (value & (1 << i)) != 0 ? bytes1("1") : bytes1("0");
            }

            return string(binary);
        }

}
