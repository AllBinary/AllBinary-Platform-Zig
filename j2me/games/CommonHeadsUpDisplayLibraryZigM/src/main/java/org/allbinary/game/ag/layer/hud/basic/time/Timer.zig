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
// package org.allbinary.game.ag.layer.hud.basic.time

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PrimitiveLongSingleton = @import("org/allbinary/logic/math/PrimitiveLongSingleton.zig").PrimitiveLongSingleton;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;

pub const Timer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.time.Timer";
    startTime: i64 = 0,
    hundredthTime: i64 = 0,
    maxTime: i64 = 0,
    modifier: i64 = 0,
    hundrethsString: []u16 = &.{},
    totalDigits: i32 = 0,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    MAX: []u16 = &.{},
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,

    fn initFields(this: *Self) void {
        this.startTime = @as(i64, @intCast(-1));
        this.hundredthTime = 0;
        
        this.modifier = 0;
        this.hundrethsString = PrimitiveLongSingleton.getInstance().?.ZERO;
        this.totalDigits = 1;
        
        this.MAX = @constCast(&[_]u16{ 'L', 'O', 'L' })[0..];
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
    }
    

    pub fn create1(maxTime: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.primitiveLongUtil = Inheritance.upcast(@TypeOf(this.primitiveLongUtil), Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ maxTime }));
        this.maxTime = @as(i64, @intCast(maxTime));
        return this;
    }
    

    pub fn start(self: *Self) void {
        self.hundredthTime = 0;
        self.startTime = self.gameTickTimeDelayHelper.?.startTime;
    }
    

    pub fn get(self: *Self) i64 {
        return self.hundredthTime;
    }
    

    pub fn update(self: *Self) void {
        const lastLowerTime: i64 = self.hundredthTime;
        var currentTime: i64 = ((self.modifier + self.gameTickTimeDelayHelper.?.startTime) - self.startTime);
        if (currentTime < 0) {
            currentTime = 0;
        }
        self.hundredthTime = @divTrunc(currentTime, 100);
        if (self.hundredthTime >= self.maxTime) {
            if (self.startTime > 0) {
                self.hundrethsString = self.MAX;
            }
        } else if (lastLowerTime != self.hundredthTime) {
            self.hundrethsString = Inheritance.upcast(@TypeOf(self.hundrethsString), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ @as(i32, @intCast(self.hundredthTime)) }));
            self.totalDigits = self.primitiveLongUtil.?.getCurrentTotalDigits();
        }
    }
    

    pub fn reduce(self: *Self, value: i32) void {
        self.modifier -= @as(i64, @intCast(value));
    }
    

    pub fn add(self: *Self, value: i32) void {
        self.modifier += @as(i64, @intCast(value));
    }
    

    pub fn getTimeChars(self: *Self) []u16 {
        return self.hundrethsString;
    }
    

    pub fn getCurrentTotalDigits(self: *Self) i32 {
        return self.totalDigits;
    }
};

