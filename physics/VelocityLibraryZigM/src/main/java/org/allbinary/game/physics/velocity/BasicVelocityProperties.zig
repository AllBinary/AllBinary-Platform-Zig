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
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionUtil = @import("org/allbinary/direction/DirectionUtil.zig").DirectionUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const AxisMathVectorUtil = @import("org/allbinary/logic/math/vector/AxisMathVectorUtil.zig").AxisMathVectorUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicVelocityInterface = @import("org/allbinary/game/physics/velocity/BasicVelocityInterface.zig").BasicVelocityInterface;

pub const BasicVelocityProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.velocity.BasicVelocityProperties";
    pub const java_interfaces = .{ BasicVelocityInterface };
    logUtil: ?*LogUtil = null,
    velocityXBasicDecimal: ?*BasicDecimal = null,
    velocityYBasicDecimal: ?*BasicDecimal = null,
    velocityZBasicDecimal: ?*BasicDecimal = null,
    axisMathVectorUtil: ?*AxisMathVectorUtil = null,
    directionUtil: ?*DirectionUtil = null,
    // Implements BasicVelocityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        this.axisMathVectorUtil = Inheritance.upcast(?*AxisMathVectorUtil, AxisMathVectorUtil.getInstance());
        this.directionUtil = Inheritance.upcast(?*DirectionUtil, DirectionUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.velocityXBasicDecimal = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
        this.velocityYBasicDecimal = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
        this.velocityZBasicDecimal = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
        return this;
    }
    

    pub fn zero(self: *Self) void {
        _ = Inheritance.call(self.velocityXBasicDecimal.?, "setint", .{ 0 });
        _ = Inheritance.call(self.velocityYBasicDecimal.?, "setint", .{ 0 });
        _ = Inheritance.call(self.velocityZBasicDecimal.?, "setint", .{ 0 });
    }
    

    pub fn getVelocityXBasicDecimalP(self: *Self) ?*BasicDecimal {
        return self.velocityXBasicDecimal;
    }
    

    pub fn getVelocityYBasicDecimalP(self: *Self) ?*BasicDecimal {
        return self.velocityYBasicDecimal;
    }
    

    pub fn getVelocityZBasicDecimalP(self: *Self) ?*BasicDecimal {
        return self.velocityZBasicDecimal;
    }
    

    pub fn setVelocityWithBigDecimalAndDirection(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void {
        const angle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ direction }));
        const otherAngle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ otherDirection }));
        _ = Inheritance.call(self, "setVelocityWithBigDecimal", .{ magnitudeBasicDecimal, angle, otherAngle });
    }
    

    pub fn setVelocityWithDirection(self: *Self, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void {
        const angle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ direction }));
        const otherAngle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ otherDirection }));
        _ = Inheritance.call(self, "setVelocity", .{ magnitude, angle, otherAngle });
    }
    

    pub fn addVelocityWithBigDecimalAndDirection(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void {
        const angle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ direction }));
        const otherAngle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ otherDirection }));
        _ = Inheritance.call(self, "addVelocityWithBigDecimal", .{ magnitudeBasicDecimal, angle, otherAngle });
    }
    

    pub fn addVelocityWithDirection(self: *Self, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void {
        const angle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ direction }));
        const otherAngle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getAngle", .{ otherDirection }));
        _ = Inheritance.call(self, "addVelocity", .{ magnitude, angle, otherAngle });
    }
    

    pub fn setVelocityWithBigDecimal(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void {
        const magnitude: i64 = magnitudeBasicDecimal.?.getUnscaled();
        _ = Inheritance.call(self, "setVelocity", .{ magnitude, angle, otherAngle });
    }
    

    pub fn addVelocityWithBigDecimal(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void {
        const magnitude: i64 = magnitudeBasicDecimal.?.getUnscaled();
        _ = Inheritance.call(self, "addVelocity", .{ magnitude, angle, otherAngle });
    }
    

    pub fn setVelocity(self: *Self, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void {
        _ = Inheritance.call(self, "setVelocityi", .{ magnitude, @as(i32, @intCast(angle.?.getValue())), @as(i32, @intCast(otherAngle.?.getValue())) });
    }
    

    pub fn addVelocity(self: *Self, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void {
        _ = Inheritance.call(self, "addVelocityi", .{ magnitude, @as(i32, @intCast(angle.?.getValue())), @as(i32, @intCast(otherAngle.?.getValue())) });
    }
    

    pub fn setVelocityi(self: *Self, magnitude: i64, angle: i32, otherAngle: i32) void {
        const xVector: i64 = ((divide_N68471: { const left_N68471 = Inheritance.call(self.axisMathVectorUtil.?, "calculateX", .{ magnitude, angle }); const right_N68471 = self.velocityXBasicDecimal.?.getScaledFactorValue(); break :divide_N68471 if (comptime @typeInfo(@TypeOf(left_N68471)) == .int or @TypeOf(left_N68471) == comptime_int) @divTrunc(left_N68471, right_N68471) else left_N68471 / right_N68471; }));
        const yVector: i64 = ((divide_N68567: { const left_N68567 = Inheritance.call(self.axisMathVectorUtil.?, "calculateY", .{ magnitude, angle }); const right_N68567 = self.velocityYBasicDecimal.?.getScaledFactorValue(); break :divide_N68567 if (comptime @typeInfo(@TypeOf(left_N68567)) == .int or @TypeOf(left_N68567) == comptime_int) @divTrunc(left_N68567, right_N68567) else left_N68567 / right_N68567; }));
        const zVector: i64 = ((divide_N68663: { const left_N68663 = Inheritance.call(self.axisMathVectorUtil.?, "calculateZ", .{ magnitude, otherAngle }); const right_N68663 = self.velocityZBasicDecimal.?.getScaledFactorValue(); break :divide_N68663 if (comptime @typeInfo(@TypeOf(left_N68663)) == .int or @TypeOf(left_N68663) == comptime_int) @divTrunc(left_N68663, right_N68663) else left_N68663 / right_N68663; }));
        _ = Inheritance.call(self.velocityXBasicDecimal.?, "setlong", .{ xVector });
        _ = Inheritance.call(self.velocityYBasicDecimal.?, "setlong", .{ yVector });
        _ = Inheritance.call(self.velocityZBasicDecimal.?, "setlong", .{ zVector });
    }
    

    pub fn addVelocityi(self: *Self, magnitude: i64, angle: i32, otherAngle: i32) void {
        const xVector: i64 = ((divide_N68953: { const left_N68953 = Inheritance.call(self.axisMathVectorUtil.?, "calculateX", .{ magnitude, angle }); const right_N68953 = self.velocityXBasicDecimal.?.getScaledFactorValue(); break :divide_N68953 if (comptime @typeInfo(@TypeOf(left_N68953)) == .int or @TypeOf(left_N68953) == comptime_int) @divTrunc(left_N68953, right_N68953) else left_N68953 / right_N68953; }));
        const yVector: i64 = ((divide_N69049: { const left_N69049 = Inheritance.call(self.axisMathVectorUtil.?, "calculateY", .{ magnitude, angle }); const right_N69049 = self.velocityYBasicDecimal.?.getScaledFactorValue(); break :divide_N69049 if (comptime @typeInfo(@TypeOf(left_N69049)) == .int or @TypeOf(left_N69049) == comptime_int) @divTrunc(left_N69049, right_N69049) else left_N69049 / right_N69049; }));
        const zVector: i64 = ((divide_N69145: { const left_N69145 = Inheritance.call(self.axisMathVectorUtil.?, "calculateZ", .{ magnitude, otherAngle }); const right_N69145 = self.velocityZBasicDecimal.?.getScaledFactorValue(); break :divide_N69145 if (comptime @typeInfo(@TypeOf(left_N69145)) == .int or @TypeOf(left_N69145) == comptime_int) @divTrunc(left_N69145, right_N69145) else left_N69145 / right_N69145; }));
        _ = Inheritance.call(self.velocityXBasicDecimal.?, "addlong", .{ xVector });
        _ = Inheritance.call(self.velocityYBasicDecimal.?, "addlong", .{ yVector });
        _ = Inheritance.call(self.velocityZBasicDecimal.?, "addlong", .{ zVector });
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const positionStrings: ?*PositionStrings = Inheritance.upcast(?*PositionStrings, PositionStrings.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Velocity ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.X_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.velocityXBasicDecimal }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Y_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.velocityYBasicDecimal }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Z_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.velocityZBasicDecimal }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

