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
// package org.allbinary.logic.util.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const AllBinaryObjectFactoryInterface = @import("org/allbinary/logic/util/cache/AllBinaryObjectFactoryInterface.zig").AllBinaryObjectFactoryInterface;

pub const BaseCircularPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.BaseCircularPool";
    circularIndexUtil: ?*CircularIndexUtil = null,
    OBJECT_ARRAY: []?Object = &.{},

    fn initFields(this: *Self) void {
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL);
        this.OBJECT_ARRAY = NullUtil.getInstance().?.NULL_OBJECT_ARRAY;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getNextInstance(self: *Self) ?Object {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const anyType: ?Object = Inheritance.upcast(?Object, self.OBJECT_ARRAY[@intCast(self.circularIndexUtil.?.getIndex())]);
        _ = self.circularIndexUtil.?.next();
        return anyType;
    }
    

    pub fn init(self: *Self, allBinaryObjectFactoryInterface: ?*AllBinaryObjectFactoryInterface) void {
        _ = Inheritance.call(self.circularIndexUtil.?, "setIndex", .{ 0 });
        const size: i32 = self.circularIndexUtil.?.getSize();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            self.OBJECT_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(self.OBJECT_ARRAY[@intCast(index)]), allBinaryObjectFactoryInterface.?.getInstance());
            }
        }
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, index: i32) ?Object {
        return Inheritance.upcast(?Object, self.OBJECT_ARRAY[@intCast(index)]);
    }
};

