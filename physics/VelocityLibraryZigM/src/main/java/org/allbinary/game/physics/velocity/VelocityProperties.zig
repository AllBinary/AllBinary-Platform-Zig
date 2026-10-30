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
const BasicVelocityProperties = @import("org/allbinary/game/physics/velocity/BasicVelocityProperties.zig").BasicVelocityProperties;
const VelocityInterface = @import("org/allbinary/game/physics/velocity/VelocityInterface.zig").VelocityInterface;

pub const VelocityProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.velocity.VelocityProperties";
    pub const java_interfaces = .{ VelocityInterface };
    base: BasicVelocityProperties = undefined,
    maxForwardVelocity: i32 = 0,
    maxReverseVelocity: i32 = 0,
    // Implements VelocityInterface
    pub var NULL_VELOCITY_PROPERTIES: ?*VelocityProperties = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_VELOCITY_PROPERTIES = Inheritance.callStatic(VelocityProperties, "create2", .{ 0, 0 });
    }

    fn initFields(this: *Self) void {
        this.maxForwardVelocity = 0;
        this.maxReverseVelocity = 0;
    }
    

    pub fn create2(maxForwardVelocity: i32, maxReverseVelocity: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicVelocityProperties.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setMaxForwardVelocity", .{ maxForwardVelocity });
        _ = Inheritance.call(this, "setMaxReverseVelocity", .{ maxReverseVelocity });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getMaxForwardVelocity(self: *Self) i32 {
        return self.maxForwardVelocity;
    }
    

    pub fn setMaxForwardVelocity(self: *Self, maxForwardVelocity: i32) void {
        self.maxForwardVelocity = maxForwardVelocity;
    }
    

    pub fn getMaxReverseVelocity(self: *Self) i32 {
        return self.maxReverseVelocity;
    }
    

    pub fn setMaxReverseVelocity(self: *Self, maxReverseVelocity: i32) void {
        self.maxReverseVelocity = maxReverseVelocity;
    }
    

    pub fn limitMaxXYForwardVelocity(self: *Self) void {
        _ = Inheritance.call(self, "limitMaxXYVelocity", .{ self.getMaxForwardVelocity() });
    }
    

    pub fn limitMaxXYReverseVelocity(self: *Self) void {
        _ = Inheritance.call(self, "limitMaxXYVelocity", .{ self.getMaxReverseVelocity() });
    }
    

    pub fn limitMaxYForwardVelocity(self: *Self) void {
        _ = Inheritance.call(self, "limitMaxYVelocity", .{ self.getMaxForwardVelocity() });
    }
    

    pub fn limitMaxYReverseVelocity(self: *Self) void {
        _ = Inheritance.call(self, "limitMaxYVelocity", .{ self.getMaxReverseVelocity() });
    }
    

    pub fn limitMaxXForwardVelocity(self: *Self) void {
        _ = Inheritance.call(self, "limitMaxXVelocity", .{ self.getMaxForwardVelocity() });
    }
    

    pub fn limitMaxXReverseVelocity(self: *Self) void {
        _ = Inheritance.call(self, "limitMaxXVelocity", .{ self.getMaxReverseVelocity() });
    }
    

    pub fn isOverXYMaxForwardVelocity(self: *Self) bool {
        return Inheritance.call(self, "isOverXYMaxVelocity", .{ self.getMaxForwardVelocity() });
    }
    

    pub fn isOverXYMaxReverseVelocity(self: *Self) bool {
        return Inheritance.call(self, "isOverXYMaxVelocity", .{ self.getMaxReverseVelocity() });
    }
    

    pub fn limitXYToForwardAndReverseMaxVelocity(self: *Self) void {
        _ = self.limitMaxXYForwardVelocity();
        _ = self.limitMaxXYReverseVelocity();
    }
    

    pub fn limitMaxXYVelocity(self: *Self, maxVelocity: i32) void {
        _ = Inheritance.call(self, "limitMaxXVelocity", .{ maxVelocity });
        _ = Inheritance.call(self, "limitMaxYVelocity", .{ maxVelocity });
    }
    

    pub fn limitMaxPositiveYVelocity(self: *Self, maxVelocity: i32) void {
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityYBasicDecimal").*.?, "getUnscaled").getUnscaled() > maxVelocity) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "velocityYBasicDecimal").*.?, "setint", .{ maxVelocity });
        }
    }
    

    pub fn limitMaxNegativeYVelocity(self: *Self, maxVelocity: i32) void {
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityYBasicDecimal").*.?, "getUnscaled").getUnscaled() < -maxVelocity) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "velocityYBasicDecimal").*.?, "setint", .{ -maxVelocity });
        }
    }
    

    pub fn limitMaxYVelocity(self: *Self, maxVelocity: i32) void {
        _ = Inheritance.call(self, "limitMaxPositiveYVelocity", .{ maxVelocity });
        _ = Inheritance.call(self, "limitMaxNegativeYVelocity", .{ maxVelocity });
    }
    

    pub fn limitMaxXVelocity(self: *Self, maxVelocity: i32) void {
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityXBasicDecimal").*.?, "getUnscaled").getUnscaled() > maxVelocity) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "velocityXBasicDecimal").*.?, "setint", .{ maxVelocity });
        }
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityXBasicDecimal").*.?, "getUnscaled").getUnscaled() < -maxVelocity) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "velocityXBasicDecimal").*.?, "setint", .{ -maxVelocity });
        }
    }
    

    pub fn isOverXYMaxVelocity(self: *Self, maxVelocity: i32) bool {
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityXBasicDecimal").*.?, "getUnscaled").getUnscaled() > maxVelocity) {
            return true;
        }
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityXBasicDecimal").*.?, "getUnscaled").getUnscaled() < -maxVelocity) {
            return true;
        }
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityYBasicDecimal").*.?, "getUnscaled").getUnscaled() > maxVelocity) {
            return true;
        }
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "velocityYBasicDecimal").*.?, "getUnscaled").getUnscaled() < -maxVelocity) {
            return true;
        }
        return false;
    }
    

    pub fn setVelocityi(self: *Self, magnitude: i64, angle: i32, otherAngle: i32) void {
        _ = Inheritance.call(&self.base, "setVelocityi", .{ magnitude, angle, otherAngle });
        _ = self.limitXYToForwardAndReverseMaxVelocity();
    }
    

    pub fn addVelocityi(self: *Self, magnitude: i64, angle: i32, otherAngle: i32) void {
        _ = Inheritance.call(&self.base, "addVelocityi", .{ magnitude, angle, otherAngle });
        _ = self.limitXYToForwardAndReverseMaxVelocity();
    }
};

