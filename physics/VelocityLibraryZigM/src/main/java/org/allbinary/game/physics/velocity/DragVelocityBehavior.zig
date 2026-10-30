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
// package org.allbinary.game.physics.velocity

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const BasicVelocityProperties = @import("org/allbinary/game/physics/velocity/BasicVelocityProperties.zig").BasicVelocityProperties;
const VelocityBehaviorBase = @import("org/allbinary/game/physics/velocity/VelocityBehaviorBase.zig").VelocityBehaviorBase;

pub const DragVelocityBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.velocity.DragVelocityBehavior";
    base: VelocityBehaviorBase = undefined,
    pub var instance: ?*DragVelocityBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DragVelocityBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = VelocityBehaviorBase.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn reduce(self: *Self, velocityProperties: ?*BasicVelocityProperties, nominator: i32, denominator: i32) void {
        _ = self;
        if (Inheritance.receiverOf(velocityProperties.?.getVelocityXBasicDecimalP().?, "getUnscaled").getUnscaled() != 0) {
            const basicDecimal: ?*BasicDecimal = Inheritance.upcast(?*BasicDecimal, velocityProperties.?.getVelocityXBasicDecimalP());
            _ = Inheritance.call(basicDecimal.?, "multiplyint", .{ nominator });
            _ = Inheritance.call(basicDecimal.?, "divideint", .{ denominator });
        }
        if (Inheritance.receiverOf(velocityProperties.?.getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled() != 0) {
            const basicDecimal: ?*BasicDecimal = Inheritance.upcast(?*BasicDecimal, velocityProperties.?.getVelocityYBasicDecimalP());
            _ = Inheritance.call(basicDecimal.?, "multiplyint", .{ nominator });
            _ = Inheritance.call(basicDecimal.?, "divideint", .{ denominator });
        }
    }
    

    pub fn reduceX(self: *Self, velocityProperties: ?*BasicVelocityProperties, nominator: i32, denominator: i32) void {
        _ = self;
        const basicDecimal: ?*BasicDecimal = Inheritance.upcast(?*BasicDecimal, velocityProperties.?.getVelocityXBasicDecimalP());
        if (basicDecimal.?.getUnscaled() != 0) {
            _ = Inheritance.call(basicDecimal.?, "multiplyint", .{ nominator });
            _ = Inheritance.call(basicDecimal.?, "divideint", .{ denominator });
        }
    }
    

    pub fn reduceY(self: *Self, velocityProperties: ?*BasicVelocityProperties, nominator: i32, denominator: i32) void {
        _ = self;
        if (Inheritance.receiverOf(velocityProperties.?.getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled() != 0) {
            const basicDecimal: ?*BasicDecimal = Inheritance.upcast(?*BasicDecimal, velocityProperties.?.getVelocityYBasicDecimalP());
            _ = Inheritance.call(basicDecimal.?, "multiplyint", .{ nominator });
            _ = Inheritance.call(basicDecimal.?, "divideint", .{ denominator });
        }
    }
};

