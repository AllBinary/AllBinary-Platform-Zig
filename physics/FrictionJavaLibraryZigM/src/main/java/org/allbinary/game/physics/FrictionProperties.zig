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
// package org.allbinary.game.physics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FrictionData = @import("org/allbinary/game/physics/friction/FrictionData.zig").FrictionData;
const DragVelocityBehavior = @import("org/allbinary/game/physics/velocity/DragVelocityBehavior.zig").DragVelocityBehavior;
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;

pub const FrictionProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.FrictionProperties";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn friction(self: *Self, velocityProperties: ?*VelocityProperties, nominator: i32) void {
        _ = self;
        _ = Inheritance.call(DragVelocityBehavior.instance.?, "reduce", .{ velocityProperties, nominator, FrictionData.getFrictionDenominator() });
    }
};

