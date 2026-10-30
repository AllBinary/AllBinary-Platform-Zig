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
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const AxisMathVectorUtil = @import("org/allbinary/logic/math/vector/AxisMathVectorUtil.zig").AxisMathVectorUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const Movement = @import("org/allbinary/physics/movement/Movement.zig").Movement;

pub const ConstantVelocityNotifyViewChangeMovement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement";
    base: Movement = undefined,
    basicVelocityProperties: ?*BasicVelocityProperties = null,
    speedBasicDecimal: ?*BasicDecimal = null,
    axisMathVectorUtil: ?*AxisMathVectorUtil = null,

    fn initFields(this: *Self) void {
        
        
        this.axisMathVectorUtil = Inheritance.upcast(?*AxisMathVectorUtil, AxisMathVectorUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Movement.create().*;
        this.initFields();
        this.speedBasicDecimal = Inheritance.upcast(@TypeOf(this.speedBasicDecimal), BasicDecimal.ZERO_BIGDECIMAL);
        this.basicVelocityProperties = BasicVelocityProperties.create();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, speedBasicDecimal: ?*BasicDecimal, angle: i32, otherAngle: i32) void {
        self.speedBasicDecimal = speedBasicDecimal;
        const angleFactory: ?*AngleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        _ = Inheritance.call(self.basicVelocityProperties.?, "setVelocityWithBigDecimal", .{ speedBasicDecimal, Inheritance.call(angleFactory.?, "getAt", .{ angle }), Inheritance.call(angleFactory.?, "getAt", .{ otherAngle }) });
    }
    

    pub fn moveOutsideRadius(self: *Self, layer: ?*AllBinaryLayer, radius: i64, angle: i32, otherAngle: i32) void {
        const scaleFactorValue: i32 = self.speedBasicDecimal.?.getScaledFactorValue();
        const xVector: i32 = @as(i32, @intCast(((divide_N66307: { const left_N66307 = Inheritance.call(self.axisMathVectorUtil.?, "calculateX", .{ radius, angle }); const right_N66307 = scaleFactorValue; break :divide_N66307 if (comptime @typeInfo(@TypeOf(left_N66307)) == .int or @TypeOf(left_N66307) == comptime_int) @divTrunc(left_N66307, right_N66307) else left_N66307 / right_N66307; }))));
        const yVector: i32 = @as(i32, @intCast(((divide_N66393: { const left_N66393 = Inheritance.call(self.axisMathVectorUtil.?, "calculateY", .{ radius, angle }); const right_N66393 = scaleFactorValue; break :divide_N66393 if (comptime @typeInfo(@TypeOf(left_N66393)) == .int or @TypeOf(left_N66393) == comptime_int) @divTrunc(left_N66393, right_N66393) else left_N66393 / right_N66393; }))));
        const zVector: i32 = @as(i32, @intCast(((divide_N66479: { const left_N66479 = Inheritance.call(self.axisMathVectorUtil.?, "calculateZ", .{ radius, otherAngle }); const right_N66479 = scaleFactorValue; break :divide_N66479 if (comptime @typeInfo(@TypeOf(left_N66479)) == .int or @TypeOf(left_N66479) == comptime_int) @divTrunc(left_N66479, right_N66479) else left_N66479 / right_N66479; }))));
        _ = Inheritance.call(layer.?, "moveDXYZ", .{ xVector, yVector, zVector });
    }
    

    // throws Exception
    pub fn process(self: *Self, layer: ?*AllBinaryGameLayer) void {
        const x: i32 = Inheritance.receiverOf(self.basicVelocityProperties.?.getVelocityXBasicDecimalP().?, "getScaled").getScaled();
        const y: i32 = Inheritance.receiverOf(self.basicVelocityProperties.?.getVelocityYBasicDecimalP().?, "getScaled").getScaled();
        const z: i32 = Inheritance.receiverOf(self.basicVelocityProperties.?.getVelocityZBasicDecimalP().?, "getScaled").getScaled();
        _ = Inheritance.call(layer.?, "moveDXYZ", .{ x, y, z });
        if (x != 0 or y != 0 or z != 0) {
            _ = Inheritance.receiver(layer.?, "onViewPositionChangeEvent").onViewPositionChangeEvent();
        }
    }
    

    pub fn stop(self: *Self) void {
        _ = self.basicVelocityProperties.?.zero();
    }
};

