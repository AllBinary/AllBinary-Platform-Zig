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
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const ScaleFactorFactory = @import("org/allbinary/logic/math/ScaleFactorFactory.zig").ScaleFactorFactory;
const BasicConstantVelocityMovement = @import("org/allbinary/physics/movement/BasicConstantVelocityMovement.zig").BasicConstantVelocityMovement;

pub const PreciseConstantVelocityMovement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.PreciseConstantVelocityMovement";
    base: BasicConstantVelocityMovement = undefined,
    accumulatedX: i32 = 0,
    accumulatedY: i32 = 0,
    accumulatedZ: i32 = 0,
    factorValue: i32 = 0,

    fn initFields(this: *Self) void {
        this.accumulatedX = 0;
        this.accumulatedY = 0;
        this.accumulatedZ = 0;
        this.factorValue = ScaleFactorFactory.getInstance().?.DEFAULT_SCALE_VALUE;
    }
    

    pub fn create2(basicDecimal: ?*BasicDecimal, velocityProperties: ?*BasicVelocityProperties) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicConstantVelocityMovement, "create2", .{ basicDecimal, velocityProperties }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
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
        const mathUtil: ?*MathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
        const velocityProperties: ?*BasicVelocityProperties = Inheritance.upcast(?*BasicVelocityProperties, Inheritance.receiver(self, "getVelocityProperties").getVelocityProperties());
        self.accumulatedX = @as(i32, @intCast((self.accumulatedX + Inheritance.receiverOf(velocityProperties.?.getVelocityXBasicDecimalP().?, "getUnscaled").getUnscaled())));
        self.accumulatedY = @as(i32, @intCast((self.accumulatedY + Inheritance.receiverOf(velocityProperties.?.getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled())));
        self.accumulatedZ = @as(i32, @intCast((self.accumulatedZ + Inheritance.receiverOf(velocityProperties.?.getVelocityZBasicDecimalP().?, "getUnscaled").getUnscaled())));
        _ = Inheritance.call(layer.?, "moveDXYZ", .{ @divTrunc(self.accumulatedX, self.factorValue), @divTrunc(self.accumulatedY, self.factorValue), @divTrunc(self.accumulatedZ, self.factorValue) });
        if (Inheritance.call(mathUtil.?, "abs", .{ self.accumulatedX }) > self.factorValue) {
            self.accumulatedX = 0;
        }
        if (Inheritance.call(mathUtil.?, "abs", .{ self.accumulatedY }) > self.factorValue) {
            self.accumulatedY = 0;
        }
        if (Inheritance.call(mathUtil.?, "abs", .{ self.accumulatedZ }) > self.factorValue) {
            self.accumulatedZ = 0;
        }
    }
};

