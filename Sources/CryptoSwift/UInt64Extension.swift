//
//  UInt64Extension.swift
//  CryptoSwift
//
//  Created by Marcin Krzyzanowski on 02/09/14.
//  Copyright (c) 2014 Marcin Krzyzanowski. All rights reserved.
//

/** array of bytes */
extension UInt64 {
    public func bytes(totalBytes: Int = MemoryLayout<UInt64>.size) -> Array<UInt8> {
        return arrayOfBytes(value: self, length: totalBytes)
    }

    public static func with(bytes: ArraySlice<UInt8>) -> UInt64 {
        return integerWith(Array(bytes))
    }

    /** Int with array bytes (little-endian) */
    public static func with(bytes: Array<UInt8>) -> UInt64 {
        return integerWith(bytes)
    }
}