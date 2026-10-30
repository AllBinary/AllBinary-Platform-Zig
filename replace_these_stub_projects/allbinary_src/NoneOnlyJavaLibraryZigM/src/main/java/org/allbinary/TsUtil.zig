// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const System = @import("java/lang/System.zig").System;

//None - Do not use
pub const TsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.TsUtil";
    var instance: ?*TsUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TsUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*TsUtil {
        return Inheritance.upcast(?*TsUtil, TsUtil.instance);
    }
    

    pub fn hashCode(self: *Self, anyType: ?Object) i32 {
        _ = self;
        return Object.hashCode(Object.of(anyType));
    }
    

    // throws InterruptedException
    pub fn waitFor(self: *Self, any: ?Object, timeoutMillis: i64) void {
        _ = self;
        const anyType: ?Object = Inheritance.cast(?Object, any);
        _ = Object.monitor(anyType).wait(timeoutMillis);
    }
    

    pub fn getRecord(self: *Self, anyType: ?Object, recordId: i32) []i8 {
        _ = anyType;
        _ = recordId;
        _ = self;
        return array_N65920: { const array_N65920_array = allocator.alloc(i8, @intCast(0)) catch unreachable; @memset(array_N65920_array, 0); break :array_N65920 array_N65920_array; };
    }
    

    pub fn compareTo(self: *Self, a: ?*String, b: ?*String) i32 {
        _ = self;
        return Inheritance.call(a.?, "compareTo", .{ b });
    }
    

    pub fn equalIgnoreCase(self: *Self, a: ?*String, b: ?*String) bool {
        _ = self;
        return Inheritance.call(a.?, "equalsIgnoreCase", .{ b });
    }
    

    pub fn equalsNotstring(self: *Self, anyType: ?Object, object2: ?Object) bool {
        _ = self;
        return Object.equals(Object.of(anyType), object2);
    }
    

    pub fn toNumberFromChar(self: *Self, value: u16) i32 {
        _ = self;
        return @as(i32, @intCast(value));
    }
    

    pub fn toNumber(self: *Self, value: i32) i32 {
        _ = self;
        return value;
    }
    

    pub fn getByteArray(self: *Self, string: ?*String) []i8 {
        _ = self;
        return string.?.getBytes();
    }
    

    pub fn isItemListener(self: *Self, owner: ?Object) bool {
        _ = owner;
        _ = self;
        return false;
    }
    

    pub fn printAvailableMethods(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    pub fn gc(self: *Self) void {
        _ = self;
        _ = {};
    }
};

