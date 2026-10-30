//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.logic.java.byteutil

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ByteUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.byteutil.ByteUtil";
    var instance: ?*ByteUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ByteUtil.create();
    }
    

    pub fn getInstance() ?*ByteUtil {
        return Inheritance.upcast(?*ByteUtil, ByteUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn xor(self: *Self, array: []i8, mask: i8) []i8 {
        _ = self;
        const bytes: []i8 = array_N65737: { const array_N65737_array = allocator.alloc(i8, @intCast(@as(i32, @intCast(array.len)))) catch unreachable; @memset(array_N65737_array, 0); break :array_N65737 array_N65737_array; };
        const size: i32 = @as(i32, @intCast(array.len));
        var index: i32 = 0;
        var currentByte: i8 = 0;
        while (index < size) {
            currentByte = array[@intCast(index)];
            bytes[@intCast(index)] = @as(i8, @intCast((currentByte ^ mask)));
            index += 1;
        }
        return bytes;
    }
    

    pub fn not(self: *Self, array: []i8) []i8 {
        _ = self;
        const bytes: []i8 = array_N66146: { const array_N66146_array = allocator.alloc(i8, @intCast(@as(i32, @intCast(array.len)))) catch unreachable; @memset(array_N66146_array, 0); break :array_N66146 array_N66146_array; };
        const size: i32 = @as(i32, @intCast(array.len));
        var index: i32 = 0;
        while (index < size) {
            bytes[@intCast(index)] = @as(i8, @intCast(~array[@intCast(index)]));
            index += 1;
        }
        return bytes;
    }
    

    pub fn xorByte(self: *Self, array: []i8, index: i32) []i8 {
        var mask: i8 = 0;
        if (index == 0) {
            mask = 1;
        }
        if (index == 1) {
            mask = 2;
        }
        if (index == 2) {
            mask = 4;
        }
        if (index == 3) {
            mask = 8;
        }
        if (index == 4) {
            mask = 16;
        }
        if (index == 5) {
            mask = 32;
        }
        if (index == 6) {
            mask = 64;
        }
        if (index == 7) {
            mask = @as(i8, @intCast(-127));
        }
        return Inheritance.call(self, "xor", .{ array, mask });
    }
    

    pub fn compare(self: *Self, newByteArray: []i8, oldByteArray: []i8) bool {
        _ = self;
        if (@as(i32, @intCast(newByteArray.len)) != @as(i32, @intCast(oldByteArray.len))) {
            return false;
        } else {
        }
        const size: i32 = @as(i32, @intCast(newByteArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (newByteArray[@intCast(index)] != oldByteArray[@intCast(index)]) {
                return false;
            }
            }
        }
        return true;
    }
    

    pub fn compareWithStats(self: *Self, newByteArray: []i8, newSize: i32, oldByteArray: []i8, stats: []i32) bool {
        _ = self;
        if (newSize != @as(i32, @intCast(oldByteArray.len))) {
            stats[@intCast(0)] = -1;
            stats[@intCast(2)] = newSize;
            stats[@intCast(3)] = @as(i32, @intCast(oldByteArray.len));
            return false;
        } else {
            stats[@intCast(0)] = newSize;
        }
        stats[@intCast(1)] = 0;
        const size: i32 = newSize;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (newByteArray[@intCast(index)] != oldByteArray[@intCast(index)]) {
                return false;
            }
            stats[@intCast(1)] += 1;
            }
        }
        return true;
    }
};

