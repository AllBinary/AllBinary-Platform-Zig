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
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const SmallIntegerSingletonFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.SmallIntegerSingletonFactory";
    NEGATIVE_MAX: i32 = 0,
    POSITIVE_MAX: i32 = 0,
    INTEGER_ARRAY: []?*Integer = &.{},
    STRING_ARRAY: []?*String = &.{},
    MIN: i32 = 0,
    lastMin: i32 = 0,
    lastNegativeMin: i32 = 0,
    var instance: ?*SmallIntegerSingletonFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SmallIntegerSingletonFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NEGATIVE_MAX = 500;
        this.POSITIVE_MAX = 0x2D1;
        this.INTEGER_ARRAY = array_N65887: { const array_N65887_array = allocator.alloc(?*Integer, @intCast(this.NEGATIVE_MAX + this.POSITIVE_MAX)) catch unreachable; @memset(array_N65887_array, null); break :array_N65887 array_N65887_array; };
        this.STRING_ARRAY = array_N65972: { const array_N65972_array = allocator.alloc(?*String, @intCast(this.NEGATIVE_MAX + this.POSITIVE_MAX)) catch unreachable; @memset(array_N65972_array, null); break :array_N65972 array_N65972_array; };
        this.MIN = 0;
        this.lastMin = 0;
        this.lastNegativeMin = 0;
    }
    

    pub fn getInstance() ?*SmallIntegerSingletonFactory {
        return Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.instance);
    }
    

    pub fn getMin(self: *Self) i32 {
        const minAllowed: i32 = self.getMinAllowed();
        if (self.MIN <= minAllowed) {
            if (J2MEUtil.isJ2ME()) {
            } else if (AndroidUtil.isAndroid()) {
                const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
                _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Android InputFactory was initialized before GameMidlet: ") }).?, "appendint", .{ self.MIN }))), self, String.literal("getMin") });
                _ = Inheritance.call(self, "initWithRange", .{ 0x291, 6 });
            } else {
                const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
                _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ") }).?, "appendint", .{ self.MIN }))), self, String.literal("getMin") });
                _ = Inheritance.call(self, "initWithRange", .{ 0x2D0, 6 });
            }
        }
        if (self.MIN <= minAllowed) {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
            _ = Inheritance.call(logUtil.?, "put", .{ String.literal("This means you loaded the InputFactory before determining the platform input size requirements."), self, String.literal("getMin"), error.Exception });
        }
        return self.MIN;
    }
    

    pub fn getMinAllowed(self: *Self) i32 {
        _ = self;
        if (J2MEUtil.isJ2ME()) {
            return 0;
        } else {
            if (AndroidUtil.isAndroid()) {
                return 0x101;
            } else {
                return 23;
            }
        }
    }
    

    pub fn initWithRange(self: *Self, value: i32, negativeValue: i32) void {
        {
            var index: i32 = value - 1;
            while (index >= self.lastMin) : (index -= 1) {
            self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)]), Inheritance.callStatic(Integer, "create1", .{ index }));
            }
        }
        {
            var index: i32 = negativeValue - 1;
            while (index >= self.lastNegativeMin) : (index -= 1) {
            self.INTEGER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index)]), Inheritance.callStatic(Integer, "create1", .{ -index }));
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
        if (self.lastMin < self.POSITIVE_MAX or self.lastNegativeMin < self.NEGATIVE_MAX) {
            {
                var index: i32 = self.POSITIVE_MAX - 1;
                while (index >= self.lastMin) : (index -= 1) {
                self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)]), Inheritance.callStatic(Integer, "create1", .{ index }));
                }
            }
            {
                var index: i32 = self.NEGATIVE_MAX - 1;
                while (index >= self.lastNegativeMin) : (index -= 1) {
                self.INTEGER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(self.INTEGER_ARRAY[@intCast(index)]), Inheritance.callStatic(Integer, "create1", .{ -index }));
                }
            }
            self.lastMin = self.POSITIVE_MAX;
            self.MIN = self.lastMin;
            self.lastNegativeMin = self.NEGATIVE_MAX;
        }
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "initWithRange", .{ 23, 0 });
        return this;
    }
    

    pub fn getAt(self: *Self, index: i32) ?*Integer {
        return Inheritance.upcast(?*Integer, self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)]);
    }
    

    pub fn getAtNoThrow(self: *Self, index: i32) ?*Integer {
        if (index + self.NEGATIVE_MAX > @as(i32, @intCast(self.INTEGER_ARRAY.len)) - 1) {
            return Inheritance.upcast(?*Integer, self.INTEGER_ARRAY[@intCast(-1 + self.NEGATIVE_MAX)]);
        }
        return Inheritance.upcast(?*Integer, self.INTEGER_ARRAY[@intCast(index + self.NEGATIVE_MAX)]);
    }
    

    pub fn createInstance(self: *Self, index: i32) ?*Integer {
        var integer: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(self, "getAt", .{ index }));
        if (integer == null) {
            integer = Inheritance.callStatic(Integer, "create1", .{ index });
        }
        return integer;
    }
    

    pub fn getString(self: *Self, index: i32) ?*String {
        const i: i32 = index + self.NEGATIVE_MAX;
        if (self.STRING_ARRAY[@intCast(i)] == null) {
            self.STRING_ARRAY[@intCast(i)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(i)]), String.valueOf(self.INTEGER_ARRAY[@intCast(i)].?));
        }
        return Inheritance.upcast(?*String, self.STRING_ARRAY[@intCast(i)]);
    }
};

