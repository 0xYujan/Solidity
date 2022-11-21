## Bitwise Operators


## AND
- x     = 1110 = 8 + 4 + 2 + 0 = 14
- y     = 1011 = 8 + 0 + 2 + 1 = 11
- x & y = 1010 = 8 + 0 + 2 + 0 = 10

```solidity
function and(uint x, uint y) external pure returns (uint) {
        return x & y;
    }
```

# OR
- x     = 1100 = 8 + 4 + 0 + 0 = 12
- y     = 1001 = 8 + 0 + 0 + 1 = 9
- x | y = 1101 = 8 + 4 + 0 + 1 = 13
```solidity
    function or(uint x, uint y) external pure returns (uint) {
        return x | y;
    }
```

## XOR
- x     = 1100 = 8 + 4 + 0 + 0 = 12
- y     = 0101 = 0 + 4 + 0 + 1 = 5
- x ^ y = 1001 = 8 + 0 + 0 + 1 = 9

```solidity
    function xor(uint x, uint y) external pure returns (uint) {
        return x ^ y;
    }
```

## NOT
- x  = 00001100 =   0 +  0 +  0 +  0 + 8 + 4 + 0 + 0 = 12
- ~x = 11110011 = 128 + 64 + 32 + 16 + 0 + 0 + 2 + 1 = 243

```solidity
    function not(uint8 x) external pure returns (uint8) {
        return ~x;
    }
```

## Shift Left
- 1 << 0 = 0001 --> 0001 = 1
- 1 = 0001 --> 0010 = 2
- 1 << 2 = 0001 --> 0100 = 4
- 1 << 3 = 0001 --> 1000 = 8
- 3 << 2 = 0011 --> 1100 = 12

```solidity
    function shiftLeft(uint x, uint bits) external pure returns (uint) {
        return x << bits;
    }
```

## Shift Right

- 8  >> 0 = 1000 --> 1000 = 8
- 8  >> 1 = 1000 --> 0100 = 4
- 8  >> 2 = 1000 --> 0010 = 2
- 8  >> 3 = 1000 --> 0001 = 1
- 8  >> 4 = 1000 --> 0000 = 0
- 12 >> 1 = 1100 --> 0110 = 6

```solidity
    function shiftRight(uint x, uint bits) external pure returns (uint) {
        return x >> bits;
    }
```

## Get Last N Bits

Get last n bits from x
- Example, last 3 bits
- x        = 1101 = 13
- mask     = 0111 = 7
- x & mask = 0101 = 5

```solidity
    function getLastNBits(uint x, uint n) external pure returns (uint) {

        uint mask = (1 << n) - 1;
        return x & mask;
    }
```

## Get Last N Bits Using Mod

Get last n bits from x using mod operator

```solidity
    function getLastNBitsUsingMod(uint x, uint n) external pure returns (uint) {
        // 1 << n = 2 ** n
        return x % (1 << n);
    }
```

## Most Significant Bit
Get position of most significant bit

x = 1100 = 10, most significant bit = 1000, so this function will return 3

```solidity
    function mostSignificantBit(uint x) external pure returns (uint) {
        uint i = 0;
        while ((x >>= 1) > 0) {
            ++i;
        }
        return i;
    }
```

## Get First N Bits
Get first n bits from x

len = length of bits in x = position of most significant bit of x, + 1
```solidity
    function getFirstNBits(uint x, uint n, uint len ) external pure returns (uint) {
        // Example
        // x        = 1110 = 14, n = 2, len = 4
        // mask     = 1100 = 12
        // x & mask = 1100 = 12
        uint mask = ((1 << n) - 1) << (len - n);
        return x & mask;
    }
```

## Most Significant Bit With Binary Search
Find most significant bit using binary search
```solidity
    function mostSignificantBitWithBinarySearch(uint x) external pure returns (uint8 r)
    {
        // x >= 2 ** 128
        if (x >= 0x100000000000000000000000000000000) {
            x >>= 128;
            r += 128;
        }
        // x >= 2 ** 64
        if (x >= 0x10000000000000000) {
            x >>= 64;
            r += 64;
        }
        // x >= 2 ** 32
        if (x >= 0x100000000) {
            x >>= 32;
            r += 32;
        }
        // x >= 2 ** 16
        if (x >= 0x10000) {
            x >>= 16;
            r += 16;
        }
        // x >= 2 ** 8
        if (x >= 0x100) {
            x >>= 8;
            r += 8;
        }
        // x >= 2 ** 4
        if (x >= 0x10) {
            x >>= 4;
            r += 4;
        }
        // x >= 2 ** 2
        if (x >= 0x4) {
            x >>= 2;
            r += 2;
        }
        // x >= 2 ** 1
        if (x >= 0x2) r += 1;
    }
}
```
