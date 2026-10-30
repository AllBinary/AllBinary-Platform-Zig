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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const VectorRotationGenerator = @import("org/allbinary/animation/VectorRotationGenerator.zig").VectorRotationGenerator;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Double = @import("java/lang/Double.zig").Double;

pub const PointsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.PointsUtil";
    var instance: ?*PointsUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PointsUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PointsUtil {
        return Inheritance.upcast(?*PointsUtil, PointsUtil.instance);
    }
    

    // throws Exception
    pub fn doTransforms(self: *Self, pointVector: ?*BasicArrayList, angle: ?*Double, fulcrumPoint: ?*GPoint) ?*BasicArrayList {
        _ = self;
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(VectorRotationGenerator.getInstance().?, "getListAtAngle", .{ fulcrumPoint.?.getX(), fulcrumPoint.?.getY(), pointVector, Inheritance.call(AngleFactory.getInstance().?, "getAt", .{ angle.?.intValue() }) }));
    }
};

