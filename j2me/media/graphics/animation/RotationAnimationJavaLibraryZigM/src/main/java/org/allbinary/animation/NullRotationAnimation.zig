// Generated Code Do Not Modify
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;

pub const NullRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.NullRotationAnimation";
    base: RotationAnimation = undefined,
    

    pub fn createTotalAngle(angleInfo: ?*AngleInfo, totalAngle: i16, animationBehavior: ?*AnimationBehavior) ?*NullRotationAnimation {
        return Inheritance.callStatic(NullRotationAnimation, "create3", .{ angleInfo, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @divTrunc(totalAngle, Inheritance.receiverOf(angleInfo.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement()) }), animationBehavior });
    }
    

    pub fn createQuarter(animationBehavior: ?*AnimationBehavior) ?*NullRotationAnimation {
        return Inheritance.callStatic(NullRotationAnimation, "create3", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ AngleFactory.getInstance().?.QUARTER_TOTAL_ANGLE }), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 4 }), animationBehavior });
    }
    

    pub fn create3(angleInfo: ?*AngleInfo, circularIndexUtil: ?*CircularIndexUtil, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ angleInfo, circularIndexUtil, animationBehavior }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

