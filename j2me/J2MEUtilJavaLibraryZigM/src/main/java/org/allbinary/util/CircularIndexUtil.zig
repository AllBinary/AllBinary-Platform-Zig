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
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;

pub const CircularIndexUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.CircularIndexUtil";
    index: i32 = 0,
    lastIndex: i32 = 0,
    size: i32 = 0,
    pub var NULL_CIRCULAR_INDEX_UTIL: ?*CircularIndexUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_CIRCULAR_INDEX_UTIL = Inheritance.callStatic(CircularIndexUtil, "create2", .{ 0, 0 });
    }

    fn initFields(this: *Self) void {
        this.index = 0;
        this.lastIndex = 0;
        this.size = 0;
    }
    

    pub fn create2(index: i32, size: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setSize", .{ size });
        _ = Inheritance.call(this, "setIndex", .{ index });
        return this;
    }
    

    pub fn next(self: *Self) i32 {
        if (self.index >= self.lastIndex) {
            self.index = 0;
        } else {
            self.index += 1;
        }
        return self.index;
    }
    

    pub fn previous(self: *Self) i32 {
        if (self.index < 1) {
            self.index = self.lastIndex;
        } else {
            self.index -= 1;
        }
        return self.index;
    }
    

    pub fn setIndex(self: *Self, index: i32) void {
        if (index > self.lastIndex) {
            return;
        }
        self.index = index;
    }
    

    pub fn getIndex(self: *Self) i32 {
        return self.index;
    }
    

    pub fn createInstance(max: i32) ?*CircularIndexUtil {
        return Inheritance.callStatic(CircularIndexUtil, "create2", .{ 0, max });
    }
    

    pub fn createInstanceAt(index: i32, max: i32) ?*CircularIndexUtil {
        return Inheritance.callStatic(CircularIndexUtil, "create2", .{ index, max });
    }
    

    pub fn setSize(self: *Self, size: i32) void {
        self.size = size;
        self.lastIndex = size - 1;
        self.index = 0;
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.size;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.INDEX_LABEL }).?, "appendint", .{ self.index }).?, "append", .{ String.literal("lastIndex: ") }).?, "appendint", .{ self.lastIndex }).?, "append", .{ String.literal("size: ") }).?, "appendint", .{ self.size }))));
    }
};

