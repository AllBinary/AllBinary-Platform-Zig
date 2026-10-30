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
const Float = @import("java/lang/Float.zig").Float;
const Double = @import("java/lang/Double.zig").Double;

//TempBase
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
    

    pub fn longBitsToDouble(self: *Self, bits: i64) f64 {
        _ = self;
        return @as(f64, @bitCast(@as(i64, bits)));
    }
    

    pub fn intBitsToFloat(self: *Self, bits: i32) f32 {
        _ = self;
        return @as(f32, @bitCast(@as(i32, bits)));
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
    

    pub fn compareTo(self: *Self, a: ?*String, b: ?*String) i32 {
        _ = self;
        return Inheritance.call(a.?, "compareTo", .{ b });
    }
};

