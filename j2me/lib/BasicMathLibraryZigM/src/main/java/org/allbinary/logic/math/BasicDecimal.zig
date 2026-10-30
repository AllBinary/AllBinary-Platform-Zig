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
const ScaleFactorFactory = @import("org/allbinary/logic/math/ScaleFactorFactory.zig").ScaleFactorFactory;
const Long = @import("java/lang/Long.zig").Long;

pub const BasicDecimal = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.BasicDecimal";
    units: i64 = 0,
    scaled: i32 = 0,
    factor: i32 = 0,
    factorValue: i32 = 0,
    pub var ZERO_BIGDECIMAL: ?*BasicDecimal = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ZERO_BIGDECIMAL = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
    }

    fn initFields(this: *Self) void {
        
        this.scaled = 0;
        this.factor = ScaleFactorFactory.getInstance().?.DEFAULT_SCALE_FACTOR;
        this.factorValue = ScaleFactorFactory.getInstance().?.DEFAULT_SCALE_VALUE;
    }
    

    pub fn createBigDecimal(bigDecimal: ?*BasicDecimal) ?*BasicDecimal {
        return Inheritance.callStatic(BasicDecimal, "create1", .{ bigDecimal.?.getUnscaled() });
    }
    

    pub fn create1(units: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.units = units;
        _ = this.updateScaled();
        return this;
    }
    

    pub fn setint(self: *Self, value: i32) void {
        self.units = @as(i64, @intCast(value));
        _ = self.updateScaled();
    }
    

    pub fn setlong(self: *Self, value: i64) void {
        self.units = value;
        _ = self.updateScaled();
    }
    

    pub fn set(self: *Self, bigDecimal: ?*BasicDecimal) void {
        self.units = bigDecimal.?.getUnscaled();
        _ = self.updateScaled();
    }
    

    pub fn addint(self: *Self, value: i32) void {
        self.units = self.units + @as(i64, @intCast(value));
        _ = self.updateScaled();
    }
    

    pub fn addlong(self: *Self, value: i64) void {
        self.units = self.units + value;
        _ = self.updateScaled();
    }
    

    pub fn add(self: *Self, bigDecimal: ?*BasicDecimal) void {
        self.units = self.units + bigDecimal.?.getUnscaled();
        _ = self.updateScaled();
    }
    

    pub fn subtractint(self: *Self, value: i32) void {
        self.units = self.units - @as(i64, @intCast(value));
        _ = self.updateScaled();
    }
    

    pub fn subtractlong(self: *Self, value: i64) void {
        self.units = self.units - value;
        _ = self.updateScaled();
    }
    

    pub fn subtract(self: *Self, bigDecimal: ?*BasicDecimal) void {
        self.units = self.units - bigDecimal.?.getUnscaled();
        _ = self.updateScaled();
    }
    

    pub fn multiplyint(self: *Self, value: i32) void {
        self.units = self.units * @as(i64, @intCast(value));
        _ = self.updateScaled();
    }
    

    pub fn multiplylong(self: *Self, value: i64) void {
        self.units = self.units * value;
        _ = self.updateScaled();
    }
    

    pub fn multiply(self: *Self, bigDecimal: ?*BasicDecimal) void {
        self.units = self.units * bigDecimal.?.getUnscaled();
        _ = self.updateScaled();
    }
    

    pub fn divideint(self: *Self, value: i32) void {
        self.units = @divTrunc(self.units, @as(i64, @intCast(value)));
        _ = self.updateScaled();
    }
    

    pub fn dividelong(self: *Self, value: i64) void {
        self.units = @divTrunc(self.units, value);
        _ = self.updateScaled();
    }
    

    pub fn divide(self: *Self, bigDecimal: ?*BasicDecimal) void {
        self.units = @divTrunc(self.units, bigDecimal.?.getUnscaled());
        _ = self.updateScaled();
    }
    

    pub fn getUnscaled(self: *Self) i64 {
        return self.units;
    }
    

    pub fn updateScaled(self: *Self) void {
        self.scaled = @as(i32, @intCast((@divTrunc(self.units, @as(i64, @intCast(self.factorValue))))));
    }
    

    pub fn getScaled(self: *Self) i32 {
        return self.scaled;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.valueOf(self.units));
    }
    

    pub fn getScaledFactor(self: *Self) i32 {
        return self.factor;
    }
    

    pub fn getScaledFactorValue(self: *Self) i32 {
        return self.factorValue;
    }
};

