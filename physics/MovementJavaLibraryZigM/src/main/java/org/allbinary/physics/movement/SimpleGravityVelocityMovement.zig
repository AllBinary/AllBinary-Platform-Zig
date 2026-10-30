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
// package org.allbinary.physics.movement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;
const GravityUtil = @import("org/allbinary/game/physics/acceleration/GravityUtil.zig").GravityUtil;
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const BasicConstantVelocityMovement = @import("org/allbinary/physics/movement/BasicConstantVelocityMovement.zig").BasicConstantVelocityMovement;

pub const SimpleGravityVelocityMovement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.SimpleGravityVelocityMovement";
    base: BasicConstantVelocityMovement = undefined,
    gravityUtil: ?*GravityUtil = null,

    fn initFields(this: *Self) void {
        this.gravityUtil = Inheritance.upcast(?*GravityUtil, GravityUtil.getInstance());
    }
    

    pub fn create1(speedBasicDecimal: ?*BasicDecimal) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicConstantVelocityMovement, "create2", .{ speedBasicDecimal, Inheritance.callStatic(VelocityProperties, "create2", .{ @as(i32, @intCast(speedBasicDecimal.?.getUnscaled())), @as(i32, @intCast(speedBasicDecimal.?.getUnscaled())) }) }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, layer: ?*AllBinaryGameLayer) void {
        _ = Inheritance.call(self.gravityUtil.?, "process", .{ Inheritance.receiver(self, "getVelocityProperties").getVelocityProperties(), self.gravityUtil.?.GAME_GRAVITY_VELOCITY });
        _ = Inheritance.call(&self.base, "process", .{ layer });
    }
};

