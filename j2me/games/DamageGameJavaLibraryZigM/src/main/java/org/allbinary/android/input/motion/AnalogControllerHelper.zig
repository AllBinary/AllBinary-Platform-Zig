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
// package org.allbinary.android.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const AnalogControllerConfigurationFactory = @import("org/allbinary/android/input/motion/AnalogControllerConfigurationFactory.zig").AnalogControllerConfigurationFactory;

pub const AnalogControllerHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.AnalogControllerHelper";
    reduceTimeFactor: i32 = 0,
    SCALE_VALUE: i32 = 0,
    rightTimeElapsedHelper: ?*TimeDelayHelper = null,
    leftTimeElapsedHelper: ?*TimeDelayHelper = null,
    downTimeElapsedHelper: ?*TimeDelayHelper = null,
    upTimeElapsedHelper: ?*TimeDelayHelper = null,

    fn initFields(this: *Self) void {
        
        this.SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().?.SCALE_VALUE;
        this.rightTimeElapsedHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        this.leftTimeElapsedHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        this.downTimeElapsedHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        this.upTimeElapsedHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
    }
    

    pub fn create1(reduceTimeFactor: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.reduceTimeFactor = reduceTimeFactor;
        return this;
    }
    

    // throws Exception
    pub fn right(self: *Self, collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer, xAnalogValue: i32) void {
        self.rightTimeElapsedHelper.?.delay = Inheritance.upcast(@TypeOf(self.rightTimeElapsedHelper.?.delay), ((self.SCALE_VALUE - xAnalogValue) >> @intCast(self.reduceTimeFactor)));
        if (self.rightTimeElapsedHelper.?.isTimeTNT()) {
            _ = Inheritance.receiver(collidableDestroyableDamageableLayer.?, "right").right();
        }
    }
    

    // throws Exception
    pub fn left(self: *Self, collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer, xAnalogValue: i32) void {
        self.leftTimeElapsedHelper.?.delay = Inheritance.upcast(@TypeOf(self.leftTimeElapsedHelper.?.delay), ((self.SCALE_VALUE + xAnalogValue) >> @intCast(self.reduceTimeFactor)));
        if (self.leftTimeElapsedHelper.?.isTimeTNT()) {
            _ = Inheritance.receiver(collidableDestroyableDamageableLayer.?, "left").left();
        }
    }
    

    // throws Exception
    pub fn up(self: *Self, collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer, xAnalogValue: i32) void {
        self.upTimeElapsedHelper.?.delay = Inheritance.upcast(@TypeOf(self.upTimeElapsedHelper.?.delay), ((self.SCALE_VALUE - xAnalogValue) >> @intCast(self.reduceTimeFactor)));
        if (self.upTimeElapsedHelper.?.isTimeTNT()) {
            _ = Inheritance.receiver(collidableDestroyableDamageableLayer.?, "up").up();
        }
    }
    

    // throws Exception
    pub fn down(self: *Self, collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer, xAnalogValue: i32) void {
        self.downTimeElapsedHelper.?.delay = Inheritance.upcast(@TypeOf(self.downTimeElapsedHelper.?.delay), ((self.SCALE_VALUE + xAnalogValue) >> @intCast(self.reduceTimeFactor)));
        if (self.downTimeElapsedHelper.?.isTimeTNT()) {
            _ = Inheritance.receiver(collidableDestroyableDamageableLayer.?, "down").down();
        }
    }
};

