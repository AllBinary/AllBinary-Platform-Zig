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
// package org.allbinary.logic.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const PrimitiveLongSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.PrimitiveLongSingleton";
    UNK: []u16 = &.{},
    NUMBER_ARRAY: []i8 = &.{},
    NUMBER_CHAR_ARRAY: []u16 = &.{},
    NUMBER_CHAR_ARRAYS: [][]u16 = &.{},
    ZERO: []u16 = &.{},
    var instance: ?*PrimitiveLongSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PrimitiveLongSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.UNK = @constCast(&[_]u16{ 'U', 'n', 'k' })[0..];
        this.NUMBER_ARRAY = @constCast(&[_]i8{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 })[0..];
        this.NUMBER_CHAR_ARRAY = @constCast(&[_]u16{ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' })[0..];
        this.NUMBER_CHAR_ARRAYS = @constCast(&[_][]u16{ @constCast(&[_]u16{ '0' })[0..], @constCast(&[_]u16{ '1' })[0..], @constCast(&[_]u16{ '2' })[0..], @constCast(&[_]u16{ '3' })[0..], @constCast(&[_]u16{ '4' })[0..], @constCast(&[_]u16{ '5' })[0..], @constCast(&[_]u16{ '6' })[0..], @constCast(&[_]u16{ '7' })[0..], @constCast(&[_]u16{ '8' })[0..], @constCast(&[_]u16{ '9' })[0..] })[0..];
        this.ZERO = @constCast(&[_]u16{ this.NUMBER_CHAR_ARRAY[@intCast(0)] })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PrimitiveLongSingleton {
        return Inheritance.upcast(?*PrimitiveLongSingleton, PrimitiveLongSingleton.instance);
    }
    

    // throws Exception
    pub fn getNumberFromChar(self: *Self, numberAsChar: u16) i8 {
        const size: i32 = @as(i32, @intCast(self.NUMBER_CHAR_ARRAY.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (self.NUMBER_CHAR_ARRAY[@intCast(index)] == numberAsChar) {
                return self.NUMBER_ARRAY[@intCast(index)];
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("numberAsChar was not in array: ") }).?, "appendchar", .{ numberAsChar }))); break :exception error.Exception; }});
    }
};

