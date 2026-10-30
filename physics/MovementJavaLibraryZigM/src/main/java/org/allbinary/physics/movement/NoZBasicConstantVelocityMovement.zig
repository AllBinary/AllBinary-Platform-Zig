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
const VelocityInterfaceCompositeInterface = @import("org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.zig").VelocityInterfaceCompositeInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const AxisMathVectorUtil = @import("org/allbinary/logic/math/vector/AxisMathVectorUtil.zig").AxisMathVectorUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const Movement = @import("org/allbinary/physics/movement/Movement.zig").Movement;

pub const NoZBasicConstantVelocityMovement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.NoZBasicConstantVelocityMovement";
    base: Movement = undefined,
    velocityProperties: ?*BasicVelocityProperties = null,
    speedBasicDecimal: ?*BasicDecimal = null,
    axisMathVectorUtil: ?*AxisMathVectorUtil = null,
    // Implements VelocityInterfaceCompositeInterface

    fn initFields(this: *Self) void {
        
        this.speedBasicDecimal = Inheritance.upcast(?*BasicDecimal, BasicDecimal.ZERO_BIGDECIMAL);
        this.axisMathVectorUtil = Inheritance.upcast(?*AxisMathVectorUtil, AxisMathVectorUtil.getInstance());
    }
    

    pub fn create2(basicDecimal: ?*BasicDecimal, velocityProperties: ?*BasicVelocityProperties) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Movement.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setSpeedBasicDecimal", .{ basicDecimal });
        this.velocityProperties = velocityProperties;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, speedBasicDecimal: ?*BasicDecimal, angle: i32, otherAngle: i32) void {
        self.speedBasicDecimal = speedBasicDecimal;
        const angleFactory: ?*AngleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        _ = Inheritance.call(self.velocityProperties.?, "setVelocityWithBigDecimal", .{ speedBasicDecimal, Inheritance.call(angleFactory.?, "getAt", .{ angle }), Inheritance.call(angleFactory.?, "getAt", .{ otherAngle }) });
    }
    

    pub fn moveOutsideRadius(self: *Self, layer: ?*AllBinaryLayer, radius: i64, angle: i32, otherAngle: i32) void {
        _ = otherAngle;
        const scaleFactorValue: i32 = self.speedBasicDecimal.?.getScaledFactorValue();
        const xVector: i32 = @as(i32, @intCast(((divide_N66371: { const left_N66371 = Inheritance.call(self.axisMathVectorUtil.?, "calculateX", .{ radius, angle }); const right_N66371 = scaleFactorValue; break :divide_N66371 if (comptime @typeInfo(@TypeOf(left_N66371)) == .int or @TypeOf(left_N66371) == comptime_int) @divTrunc(left_N66371, right_N66371) else left_N66371 / right_N66371; }))));
        const yVector: i32 = @as(i32, @intCast(((divide_N66457: { const left_N66457 = Inheritance.call(self.axisMathVectorUtil.?, "calculateY", .{ radius, angle }); const right_N66457 = scaleFactorValue; break :divide_N66457 if (comptime @typeInfo(@TypeOf(left_N66457)) == .int or @TypeOf(left_N66457) == comptime_int) @divTrunc(left_N66457, right_N66457) else left_N66457 / right_N66457; }))));
        _ = Inheritance.call(layer.?, "moveDXYZ", .{ xVector, yVector, 0 });
    }
    

    // throws Exception
    pub fn process(self: *Self, layer: ?*AllBinaryGameLayer) void {
        _ = Inheritance.call(layer.?, "moveDXYZ", .{ Inheritance.receiverOf(self.velocityProperties.?.getVelocityXBasicDecimalP().?, "getScaled").getScaled(), Inheritance.receiverOf(self.velocityProperties.?.getVelocityYBasicDecimalP().?, "getScaled").getScaled(), 0 });
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.velocityProperties)));
    }
    

    pub fn stop(self: *Self) void {
        _ = self.velocityProperties.?.zero();
    }
    

    pub fn getVelocityProperties(self: *Self) ?*BasicVelocityProperties {
        return self.velocityProperties;
    }
    

    pub fn setVelocityProperties(self: *Self, velocityProperties: ?*BasicVelocityProperties) void {
        self.velocityProperties = velocityProperties;
    }
    

    pub fn setSpeedBasicDecimal(self: *Self, speedBasicDecimal: ?*BasicDecimal) void {
        self.speedBasicDecimal = speedBasicDecimal;
    }
    

    pub fn getSpeedBasicDecimal(self: *Self) ?*BasicDecimal {
        return self.speedBasicDecimal;
    }
};

