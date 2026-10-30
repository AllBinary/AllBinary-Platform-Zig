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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const Aggression = @import("org/allbinary/game/layer/Aggression.zig").Aggression;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const Driver = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.Driver";
    turnSpeed: ?*Integer = null,
    trackPathSelectionSkill: ?*Integer = null,
    aggression: ?*Aggression = null,
    pub var NULL_DRIVER: ?*Driver = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_DRIVER = Inheritance.callStatic(Driver, "create3", .{ Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }), Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }), Inheritance.callStatic(Aggression, "create3", .{ Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }), Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }), Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }) }) });
    }

    fn initFields(this: *Self) void {
        this.turnSpeed = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
        this.trackPathSelectionSkill = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
        
    }
    

    pub fn create3(turnSpeed: ?*Integer, trackPathSelectionSkill: ?*Integer, aggression: ?*Aggression) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setTurnSpeed", .{ turnSpeed });
        _ = Inheritance.call(this, "setTrackPathSelectionSkill", .{ trackPathSelectionSkill });
        this.aggression = aggression;
        return this;
    }
    

    pub fn getTurnSpeed(self: *Self) ?*Integer {
        return self.turnSpeed;
    }
    

    pub fn setTurnSpeed(self: *Self, turnSpeed: ?*Integer) void {
        self.turnSpeed = turnSpeed;
    }
    

    pub fn getTrackPathSelectionSkill(self: *Self) ?*Integer {
        return self.trackPathSelectionSkill;
    }
    

    pub fn setTrackPathSelectionSkill(self: *Self, trackPathSelectionSkill: ?*Integer) void {
        self.trackPathSelectionSkill = trackPathSelectionSkill;
    }
    

    pub fn getAggression(self: *Self) ?*Aggression {
        return self.aggression;
    }
    

    pub fn setAggression(self: *Self, aggression: ?*Aggression) void {
        self.aggression = aggression;
    }
};

