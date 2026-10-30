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
// package org.allbinary.graphics.pipeline

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicGraphicsPipeline = @import("org/allbinary/graphics/pipeline/BasicGraphicsPipeline.zig").BasicGraphicsPipeline;

pub const GraphicsPipeline = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.pipeline.GraphicsPipeline";
    base: BasicGraphicsPipeline = undefined,
    

    pub fn create1(points: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicGraphicsPipeline, "create1", .{ points }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn rotateTheta(self: *Self, aTheta: f64) void {
        const newVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "pointBasicArrayList").*.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const secondPoint: ?*GPoint = Inheritance.cast(?*GPoint, Inheritance.call(Inheritance.fieldPointer(self, "pointBasicArrayList").*.?, "get", .{ index }));
            const secondX: f64 = (secondPoint.?.getX() * @cos(aTheta)) - (secondPoint.?.getY() * @sin(aTheta));
            const secondY: f64 = (secondPoint.?.getX() * @sin(aTheta)) + (secondPoint.?.getY() * @cos(aTheta));
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ (@as(i32, @intFromFloat(secondX))), (@as(i32, @intFromFloat(secondY))) }));
            _ = Inheritance.call(newVector.?, "add", .{ point });
            }
        }
        Inheritance.fieldPointer(self, "pointBasicArrayList").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "pointBasicArrayList").*), newVector);
    }
};

