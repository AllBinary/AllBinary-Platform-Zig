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
const BasicVelocityProperties = @import("org/allbinary/game/physics/velocity/BasicVelocityProperties.zig").BasicVelocityProperties;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const BasicConstantVelocityMovement = @import("org/allbinary/physics/movement/BasicConstantVelocityMovement.zig").BasicConstantVelocityMovement;

pub const NoBasicConstantVelocityMovement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.NoBasicConstantVelocityMovement";
    base: BasicConstantVelocityMovement = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicConstantVelocityMovement, "create2", .{ BasicDecimal.ZERO_BIGDECIMAL, BasicVelocityProperties.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, layer: ?*AllBinaryGameLayer) void {
        _ = layer;
        _ = self;
    }
};

