// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.behavior.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameLayerBehavior = @import("org/allbinary/game/layer/behavior/GameLayerBehavior.zig").GameLayerBehavior;
const BasicAccelerationProperties = @import("org/allbinary/game/physics/acceleration/BasicAccelerationProperties.zig").BasicAccelerationProperties;
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;
const InitialJumpBehavior = @import("org/allbinary/game/behavior/topview/InitialJumpBehavior.zig").InitialJumpBehavior;

pub const TopViewGameLayerBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.TopViewGameLayerBehavior";
    base: GameLayerBehavior = undefined,
    maxGravityActionIndex: i32 = 0,
    isJumpAction: bool = false,
    isJumpOver: bool = false,
    isFallingWithoutJumpAttempt: bool = false,
    gravityActionIndex: i32 = 0,

    fn initFields(this: *Self) void {
        
        this.isJumpAction = true;
        this.isJumpOver = false;
        this.isFallingWithoutJumpAttempt = false;
        this.gravityActionIndex = 0;
    }
    

    pub fn create1(maxGravityActionIndex: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GameLayerBehavior.create().*;
        this.initFields();
        this.maxGravityActionIndex = maxGravityActionIndex;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn gravity(self: *Self) void {
        if (self.gravityActionIndex == 0) {
            self.gravityActionIndex += 1;
            self.isFallingWithoutJumpAttempt = true;
        }
    }
    

    pub fn land(self: *Self, velocityProperties: ?*VelocityProperties) void {
        _ = Inheritance.call(velocityProperties.?.getVelocityYBasicDecimalP().?, "setint", .{ 0 });
        _ = self.landReset();
    }
    

    pub fn landReset(self: *Self) void {
        self.gravityActionIndex = 0;
        self.isFallingWithoutJumpAttempt = false;
        self.isJumpAction = true;
        self.isJumpOver = false;
    }
    

    pub fn up(self: *Self, velocityProperties: ?*VelocityProperties, acceleration: ?*BasicAccelerationProperties, jumpBehavior: ?*InitialJumpBehavior, accelerationMultiplier: i32) void {
        if (!self.isJumpOver) {
            if (self.gravityActionIndex < self.maxGravityActionIndex) {
                const acceleration2: i32 = -acceleration.?.getForward() * accelerationMultiplier;
                _ = Inheritance.call(velocityProperties.?.getVelocityYBasicDecimalP().?, "addint", .{ acceleration2 });
                _ = velocityProperties.?.limitXYToForwardAndReverseMaxVelocity();
                self.gravityActionIndex += 1;
            } else {
            }
        } else {
        }
        if (self.isJumpAction) {
            _ = jumpBehavior.?.process();
            self.isJumpAction = false;
        }
    }
    

    pub fn inputFrames(self: *Self, velocityProperties: ?*VelocityProperties) void {
        if (self.gravityActionIndex > 0 and Inheritance.receiverOf(velocityProperties.?.getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled() > 0) {
            self.isJumpOver = true;
        }
    }
};

