// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract BinarySearch {

    function run(uint256[] memory _array, uint256 _value)
        public
        pure
        returns (uint256 index)
    {
        uint256 start = 0;
        uint256 end = _array.length - 1;

        while (start <= end) {
            uint256 mindex = (start + end) / 2;
            uint256 mvalue = _array[mindex];

            if (mvalue < _value) {
                start = mindex + 1;
            } else if (mvalue > _value) {
                end = mindex - 1;
            } else {
                index = mindex;
                return index;
            }
        }
    }
}
