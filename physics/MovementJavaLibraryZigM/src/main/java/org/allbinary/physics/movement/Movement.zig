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
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const MovementInterface = @import("org/allbinary/physics/movement/MovementInterface.zig").MovementInterface;

pub const Movement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.Movement";
    pub const java_interfaces = .{ MovementInterface };
    // Implements MovementInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init(self: *Self, speedBasicDecimal: ?*BasicDecimal, angle: i32, otherAngle: i32) void {
        _ = speedBasicDecimal;
        _ = angle;
        _ = otherAngle;
        _ = self;
    }
    

    // throws Exception
    pub fn process(self: *Self, layer: ?*AllBinaryGameLayer) void {
        _ = layer;
        _ = self;
    }
    

    pub fn stop(self: *Self) void {
        _ = self;
    }
};

