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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const PrimitiveLongSingleton = @import("org/allbinary/logic/math/PrimitiveLongSingleton.zig").PrimitiveLongSingleton;

pub const PrimitiveLongUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.PrimitiveLongUtil";
    logUtil: ?*LogUtil = null,
    powerOfTen: i32 = 0,
    maxValue: i32 = 0,
    maxDigits: i32 = 0,
    charArray: []u16 = &.{},
    currentTotalDigits: i32 = 0,
    primitiveLongSingleton: ?*PrimitiveLongSingleton = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        this.currentTotalDigits = 0;
        this.primitiveLongSingleton = Inheritance.upcast(?*PrimitiveLongSingleton, PrimitiveLongSingleton.getInstance());
    }
    

    pub fn createPowerOfTen(powerOfTen: i32) ?*PrimitiveLongUtil {
        const primitiveLongUtil: ?*PrimitiveLongUtil = Inheritance.callStatic(PrimitiveLongUtil, "create2", .{ powerOfTen, NullUtil.getInstance().?.NULL_OBJECT });
        if (@rem(powerOfTen, 10) != 0) {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, primitiveLongUtil, commonStrings.?.CONSTRUCTOR, exception: { _ = String.literal("Max must be power of 10"); break :exception error.Exception; } });
        }
        return primitiveLongUtil;
    }
    

    pub fn create2(powerOfTen: i32, unused: ?Object) *Self {
        _ = unused;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.maxDigits = Inheritance.call(MathUtil.getInstance().?, "getTotalDigits", .{ powerOfTen });
        this.powerOfTen = powerOfTen;
        this.maxValue = (powerOfTen * 10) - 1;
        this.charArray = Inheritance.upcast(@TypeOf(this.charArray), array_N66432: { const array_N66432_array = allocator.alloc(u16, @intCast(this.maxDigits)) catch unreachable; @memset(array_N66432_array, 0); break :array_N66432 array_N66432_array; });
        return this;
    }
    

    pub fn getCharArray(self: *Self, value: i32) []u16 {
        if (value < 10) {
            _ = Inheritance.call(self, "setCurrentTotalDigits", .{ 1 });
            return self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAYS[@intCast(value)];
        }
        if (value > self.maxValue) {
            _ = Inheritance.call(self, "setCurrentTotalDigits", .{ 3 });
            return self.primitiveLongSingleton.?.UNK;
        }
        var index: i32 = 0;
        var div: i32 = self.powerOfTen;
        var lastValue: i32 = 0;
        while (div >= 1) {
            const digit: i32 = @divTrunc((value - lastValue), div);
            if (digit >= 0 and digit < 10) {
                if (digit == 0 and index == 0) {
                } else {
                    self.charArray[@intCast(value_N66941: { const value_N66941_value = index; index += 1; break :value_N66941 value_N66941_value; })] = self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAY[@intCast(digit)];
                }
                lastValue += digit * div;
            }
            div = @divTrunc(div, 10);
        }
        _ = Inheritance.call(self, "setCurrentTotalDigits", .{ index });
        return self.charArray;
    }
    

    pub fn setCurrentTotalDigits(self: *Self, currentTotalDigits: i32) void {
        self.currentTotalDigits = currentTotalDigits;
    }
    

    pub fn getCurrentTotalDigits(self: *Self) i32 {
        return self.currentTotalDigits;
    }
    

    pub fn getMaxDigits(self: *Self) i32 {
        return self.maxDigits;
    }
};

