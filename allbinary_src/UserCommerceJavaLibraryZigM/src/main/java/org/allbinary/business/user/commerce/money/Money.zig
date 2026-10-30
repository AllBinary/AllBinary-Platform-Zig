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
// package org.allbinary.business.user.commerce.money

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const Long = @import("java/lang/Long.zig").Long;
const Float = @import("java/lang/Float.zig").Float;

pub const Money = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.Money";
    units: ?*Long = null,
    DEFAULT_CURRENCY: ?*String = null,

    fn initFields(this: *Self) void {
        
        this.DEFAULT_CURRENCY = String.literal("USD");
    }
    

    pub fn create1(money: ?*Money) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.units = Inheritance.callStatic(Long, "create1", .{ money.?.getUnits() });
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.units = Inheritance.callStatic(Long, "create1", .{ 0 });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(usDollarStr: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (usDollarStr != null and Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ usDollarStr })) {
            this.units = Inheritance.callStatic(Long, "create1", .{ Inheritance.call(this, "convertUsdToUnits", .{ usDollarStr }) });
        }
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(units: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.units = Inheritance.callStatic(Long, "create1", .{ units });
        return this;
    }
    

    pub fn isValid(self: *Self) bool {
        if (self.units != null and self.units.?.longValue() > 0 and self.units.?.longValue() < @as(i64, std.math.maxInt(i64))) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn add(self: *Self, moreMoney: ?*Money) void {
        _ = Inheritance.call(self, "add", .{ Object.toString(Object.of(moreMoney)) });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn add(self: *Self, usDollarStr: ?*String) void {
        self.units = Inheritance.callStatic(Long, "create1", .{ self.units.?.longValue() + Inheritance.call(self, "convertUsdToUnits", .{ usDollarStr }) });
    }
    

    pub fn subtract(self: *Self, usDollarStr: ?*String) void {
        self.units = Inheritance.callStatic(Long, "create1", .{ self.units.?.longValue() - Inheritance.call(self, "convertUsdToUnits", .{ usDollarStr }) });
    }
    

    pub fn multiply(self: *Self, multiplier: ?*Float) void {
        self.units = Inheritance.callStatic(Long, "create1", .{ Inheritance.callStatic(Float, "create1", .{ self.units.?.longValue() * multiplier.?.floatValue() }).longValue() });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn multiply(self: *Self, multiplier: i32) void {
        self.units = Inheritance.callStatic(Long, "create1", .{ self.units.?.longValue() * multiplier });
    }
    

    pub fn convertUnitsTo(self: *Self, currency: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (Inheritance.call(currency.?, "compareTo", .{ self.DEFAULT_CURRENCY }) == 0) {
            const dollar: i64 = (divide_N67071: { const left_N67071 = self.units.?.longValue(); const right_N67071 = 100; break :divide_N67071 if (comptime @typeInfo(@TypeOf(left_N67071)) == .int or @TypeOf(left_N67071) == comptime_int) @divTrunc(left_N67071, right_N67071) else left_N67071 / right_N67071; });
            const cents: i64 = self.units.?.longValue() - (dollar * 100);
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ dollar }).?) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
            if (cents < 10) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ CommonPhoneStrings.getInstance().?.ZERO });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ cents }).?) });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn convertUsdToUnits(self: *Self, usDollarStr: ?*String) i64 {
        _ = self;
        var localUnit: i64 = 0;
        const index: i32 = Inheritance.call(usDollarStr.?, "indexOf", .{ AbPathData.getInstance().?.EXTENSION_SEP });
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var dollarStr: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        var centsStr: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        if (index < 1) {
            dollarStr = Inheritance.callStatic(String, "create1", .{ usDollarStr });
            centsStr = String.literal("00");
        } else {
            dollarStr = Inheritance.callStatic(String, "create1", .{ usDollarStr.?.substring2(0, index) });
            centsStr = Inheritance.callStatic(String, "create1", .{ Inheritance.call(usDollarStr.?, "substring", .{ index + 1 }) });
        }
        localUnit = Inheritance.callStatic(Long, "create1", .{ Inheritance.callStatic(Long, "create1", .{ dollarStr }).longValue() * 100 }).longValue();
        localUnit += Inheritance.callStatic(Long, "create1", .{ centsStr }).longValue();
        return localUnit;
    }
    

    pub fn getUnits(self: *Self) i64 {
        return self.units.?.longValue();
    }
    

    pub fn getUnitsLong(self: *Self) ?*Long {
        return self.units;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.callStatic(String, "create1", .{ Inheritance.call(self, "convertUnitsTo", .{ self.DEFAULT_CURRENCY }) });
    }
};

