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
// package org.allbinary.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;

pub const LayerDistanceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.LayerDistanceUtil";
    mathUtil: ?*MathUtil = null,
    var instance: ?*LayerDistanceUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LayerDistanceUtil.create();
    }

    fn initFields(this: *Self) void {
        this.mathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LayerDistanceUtil {
        return Inheritance.upcast(?*LayerDistanceUtil, LayerDistanceUtil.instance);
    }
    

    pub fn getDistance(self: *Self, layerInterface: ?*AllBinaryLayer, layerInterface2: ?*AllBinaryLayer) i32 {
        const dx: i32 = (Inheritance.receiver(layerInterface.?, "getXP").getXP() + Inheritance.receiver(layerInterface.?, "getHalfWidth").getHalfWidth()) - (Inheritance.receiver(layerInterface2.?, "getXP").getXP() + Inheritance.receiver(layerInterface2.?, "getHalfWidth").getHalfWidth());
        const dy: i32 = (Inheritance.receiver(layerInterface.?, "getYP").getYP() + Inheritance.receiver(layerInterface.?, "getHalfHeight").getHalfHeight()) - (Inheritance.receiver(layerInterface2.?, "getYP").getYP() + Inheritance.receiver(layerInterface2.?, "getHalfHeight").getHalfHeight());
        return @as(i32, @intCast(Inheritance.call(self.mathUtil.?, "sqrt", .{ (dx * dx) + (dy * dy) })));
    }
    

    pub fn getDistance3D(self: *Self, layerInterface: ?*AllBinaryLayer, layerInterface2: ?*AllBinaryLayer) i32 {
        const dx: i32 = (Inheritance.receiver(layerInterface.?, "getXP").getXP() + Inheritance.receiver(layerInterface.?, "getHalfWidth").getHalfWidth()) - (Inheritance.receiver(layerInterface2.?, "getXP").getXP() + Inheritance.receiver(layerInterface2.?, "getHalfWidth").getHalfWidth());
        const dy: i32 = (Inheritance.receiver(layerInterface.?, "getYP").getYP() + Inheritance.receiver(layerInterface.?, "getHalfHeight").getHalfHeight()) - (Inheritance.receiver(layerInterface2.?, "getYP").getYP() + Inheritance.receiver(layerInterface2.?, "getHalfHeight").getHalfHeight());
        const dz: i32 = (Inheritance.receiver(layerInterface.?, "getZP").getZP() + Inheritance.receiver(layerInterface.?, "getHalfDepth").getHalfDepth()) - (Inheritance.receiver(layerInterface2.?, "getZP").getZP() + Inheritance.receiver(layerInterface2.?, "getHalfDepth").getHalfDepth());
        return @as(i32, @intCast(Inheritance.call(self.mathUtil.?, "sqrt", .{ (dx * dx) + (dy * dy) + (dz * dz) })));
    }
    

    pub fn getDistanceAt(self: *Self, layerInterface: ?*AllBinaryLayer, point: ?*GPoint) i32 {
        const dx: i32 = Inheritance.receiver(layerInterface.?, "getXP").getXP() - point.?.getX();
        const dy: i32 = Inheritance.receiver(layerInterface.?, "getYP").getYP() - point.?.getY();
        return @as(i32, @intCast(Inheritance.call(self.mathUtil.?, "sqrt", .{ (dx * dx) + (dy * dy) })));
    }
};

