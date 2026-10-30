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
const Long = @import("java/lang/Long.zig").Long;

pub const SmallLongFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.SmallLongFactory";
    NEGATIVE_MAX: i32 = 0,
    POSITIVE_MAX: i32 = 0,
    INTEGER_ARRAY: []?*Long = &.{},
    STRING_ARRAY: []?*String = &.{},
    MIN: i32 = 0,
    lastMin: i32 = 0,
    lastNegativeMin: i32 = 0,
    var instance: ?*SmallLongFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SmallLongFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NEGATIVE_MAX = 500;
        this.POSITIVE_MAX = 0x2D1;
        this.INTEGER_ARRAY = array_N65779: { const array_N65779_array = allocator.alloc(?*Long, @intCast(this.NEGATIVE_MAX + this.POSITIVE_MAX)) catch unreachable; @memset(array_N65779_array, null); break :array_N65779 array_N65779_array; };
        this.STRING_ARRAY = array_N65864: { const array_N65864_array = allocator.alloc(?*String, @intCast(this.NEGATIVE_MAX + this.POSITIVE_MAX)) catch unreachable; @memset(array_N65864_array, null); break :array_N65864 array_N65864_array; };
        this.MIN = 0;
        this.lastMin = 0;
        this.lastNegativeMin = 0;
    }
    

    pub fn getInstance() ?*SmallLongFactory {
        return Inheritance.upcast(?*SmallLongFactory, SmallLongFactory.instance);
    }
    

    pub fn initWithRange(self: *Self, value: i32, negativeValue: i32) void {
        {
            var index: i32 = value - 1;
            while (index >= self.lastMin) : (index -= 1) {
            self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)]), Inheritance.callStatic(Long, "create1", .{ index }));
            }
        }
        {
            var index: i32 = negativeValue - 1;
            while (index >= self.lastNegativeMin) : (index -= 1) {
            self.INTEGER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index)]), Inheritance.callStatic(Long, "create1", .{ -index }));
            }
        }
        if (self.lastMin < value) {
            self.lastMin = value;
            self.MIN = value;
        }
        if (self.lastNegativeMin < negativeValue) {
            self.lastNegativeMin = negativeValue;
        }
    }
    

    pub fn init(self: *Self) void {
        if (self.INTEGER_ARRAY[@intCast(0)] == null) {
            if (self.lastMin < self.POSITIVE_MAX or self.lastNegativeMin < self.NEGATIVE_MAX) {
                {
                    var index: i32 = self.POSITIVE_MAX - 1;
                    while (index >= self.lastMin) : (index -= 1) {
                    self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)]), Inheritance.callStatic(Long, "create1", .{ index }));
                    }
                }
                {
                    var index: i32 = self.NEGATIVE_MAX - 1;
                    while (index >= self.lastNegativeMin) : (index -= 1) {
                    self.INTEGER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index)]), Inheritance.callStatic(Long, "create1", .{ -index }));
                    }
                }
                self.lastMin = self.POSITIVE_MAX;
                self.lastNegativeMin = self.NEGATIVE_MAX;
            }
        }
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstanceNoThrow(self: *Self, index: i64) ?*Long {
        if (index + @as(i64, @intCast(self.NEGATIVE_MAX)) > @as(i64, @intCast(@as(i32, @intCast(self.INTEGER_ARRAY.len)) - 1))) {
            return Inheritance.upcast(?*Long, self.INTEGER_ARRAY[@intCast(-1 + self.NEGATIVE_MAX)]);
        }
        return Inheritance.upcast(?*Long, self.INTEGER_ARRAY[@intCast((@as(i32, @intCast(index))) + self.NEGATIVE_MAX)]);
    }
    

    pub fn getString(self: *Self, index: i32) ?*String {
        const i: i32 = index + self.NEGATIVE_MAX;
        if (self.STRING_ARRAY[@intCast(i)] == null) {
            self.STRING_ARRAY[@intCast(i)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(i)]), String.valueOf(self.INTEGER_ARRAY[@intCast(i)].?));
        }
        return Inheritance.upcast(?*String, self.STRING_ARRAY[@intCast(i)]);
    }
};

