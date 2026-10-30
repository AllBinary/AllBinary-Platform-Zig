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
// package org.allbinary.logic.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;

pub const StringUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.StringUtil";
    INIT_STRING: ?*String = null,
    NULL_STRING: ?*String = null,
    EMPTY_STRING: ?*String = null,
    ONE_EMPTY_STRING_ARRAY: []?*String = &.{},
    stringArray: []?*String = &.{},
    var instance: ?*StringUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StringUtil.create();
    }

    fn initFields(this: *Self) void {
        this.INIT_STRING = Inheritance.callStatic(String, "create1", .{ String.literal("") });
        this.NULL_STRING = String.literal("null");
        this.EMPTY_STRING = String.literal("");
        this.ONE_EMPTY_STRING_ARRAY = @constCast(&[_]?*String{ this.EMPTY_STRING })[0..];
        this.stringArray = array_N66023: { const array_N66023_array = allocator.alloc(?*String, @intCast(0)) catch unreachable; @memset(array_N66023_array, null); break :array_N66023 array_N66023_array; };
    }
    

    pub fn getInstance() ?*StringUtil {
        return Inheritance.upcast(?*StringUtil, StringUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getNonNull(self: *Self, string: ?*String) ?*String {
        if (string == null) {
            return self.EMPTY_STRING;
        } else {
            return string;
        }
    }
    

    pub fn getArrayInstance(self: *Self) []?*String {
        return self.stringArray;
    }
    

    pub fn count(self: *Self, string: ?*String, aChar: u16) i32 {
        _ = self;
        var count_: i32 = 0;
        const size: i32 = string.?.length();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (Inheritance.call(string.?, "charAt", .{ index }) == aChar) {
                count_ += 1;
            }
            }
        }
        return count_;
    }
    

    pub fn toString(self: *Self, anyType: ?Object) ?*String {
        if (anyType != null) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(anyType)));
        } else {
            return self.NULL_STRING;
        }
    }
};

