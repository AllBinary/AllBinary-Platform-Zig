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
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const BasicConstantVelocityMovement = @import("org/allbinary/physics/movement/BasicConstantVelocityMovement.zig").BasicConstantVelocityMovement;

pub const OscillateVelocityMovement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.OscillateVelocityMovement";
    base: BasicConstantVelocityMovement = undefined,
    oscillateMin: i32 = 0,
    oscillateMax: i32 = 0,
    oscillate: i32 = 0,
    oscillatePositive: bool = false,

    fn initFields(this: *Self) void {
        
        
        this.oscillate = 0;
        this.oscillatePositive = false;
    }
    

    pub fn create3(speedBasicDecimal: ?*BasicDecimal, oscillateMin: i32, oscillateMax: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicConstantVelocityMovement, "create2", .{ speedBasicDecimal, Inheritance.callStatic(VelocityProperties, "create2", .{ @as(i32, @intCast(speedBasicDecimal.?.getUnscaled())), @as(i32, @intCast(speedBasicDecimal.?.getUnscaled())) }) }).*;
        this.initFields();
        this.oscillateMin = oscillateMin;
        this.oscillateMax = oscillateMax;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, layer: ?*AllBinaryGameLayer) void {
        _ = Inheritance.call(&self.base, "process", .{ layer });
        if (self.oscillate < self.oscillateMin) {
            self.oscillatePositive = true;
        } else if (self.oscillate > self.oscillateMax) {
            self.oscillatePositive = false;
        }
        if (self.oscillatePositive) {
            self.oscillate += 1;
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self, "getVelocityProperties").getVelocityProperties().?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "addint", .{ 2000 });
        } else {
            self.oscillate -= 1;
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self, "getVelocityProperties").getVelocityProperties().?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "subtractint", .{ 2000 });
        }
    }
};

