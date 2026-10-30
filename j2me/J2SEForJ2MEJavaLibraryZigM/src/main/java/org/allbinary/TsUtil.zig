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
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
// const Form = @import("javax/microedition/lcdui/Form.zig").Form;
// const InvalidRecordIDException = @import("javax/microedition/rms/InvalidRecordIDException.zig").InvalidRecordIDException;
// const RecordStore = @import("javax/microedition/rms/RecordStore.zig").RecordStore;
// const RecordStoreException = @import("javax/microedition/rms/RecordStoreException.zig").RecordStoreException;
// const RecordStoreNotOpenException = @import("javax/microedition/rms/RecordStoreNotOpenException.zig").RecordStoreNotOpenException;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const System = @import("java/lang/System.zig").System;
const Float = @import("java/lang/Float.zig").Float;
const Double = @import("java/lang/Double.zig").Double;

//J2SE
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
    

    // throws RecordStoreNotOpenException, InvalidRecordIDException, RecordStoreException
    pub fn getRecord(self: *Self, anyType: ?Object, recordId: i32) []i8 {
        const recordStore: ?*RecordStore = Inheritance.cast(?*RecordStore, anyType);
        var data: []i8 = &.{};
        {
            const monitor_N66369 = Object.monitor(self).enter();
            defer monitor_N66369.exit();
            data = Inheritance.upcast(@TypeOf(data), array_N66392: { const array_N66392_array = allocator.alloc(i8, @intCast(Inheritance.call(recordStore.?, "getRecordSize", .{ recordId }))) catch unreachable; @memset(array_N66392_array, 0); break :array_N66392 array_N66392_array; });
            _ = Inheritance.call(recordStore.?, "getRecord", .{ recordId, data, 0 });
        }
        return (if (@as(i32, @intCast(data.len)) < 1) NullUtil.getInstance().?.NULL_BYTE_ARRAY else data);
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
    

    pub fn getClassClassLoader(self: *Self, anyType: ?Object) ?*ClassLoader {
        _ = self;
        return Inheritance.upcast(?*ClassLoader, Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getClassLoader").getClassLoader());
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
    

    pub fn isItemListener(self: *Self, owner: ?*Displayable) bool {
        _ = self;
        if (Object.instanceOf(Object.of(owner), Form)) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn gc(self: *Self) void {
        _ = self;
        _ = {};
    }
};

