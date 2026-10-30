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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const RectangleCollisionUtil = @import("org/allbinary/math/RectangleCollisionUtil.zig").RectangleCollisionUtil;

pub const RectangleCollisionPointUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.RectangleCollisionPointUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn allPointsInside(rectX1: i32, rectY1: i32, rectX2: i32, rectY2: i32, list: ?*BasicArrayList) bool {
        const rectangleCollisionUtil: ?*RectangleCollisionUtil = Inheritance.upcast(?*RectangleCollisionUtil, RectangleCollisionUtil.getInstance());
        var point: ?*GPoint = null;
        {
            var index: i32 = list.?.size();
            while (value_N65913: { index -= 1; break :value_N65913 index; } >= 0) {
            point = Inheritance.cast(?*GPoint, list.?.objectArray[@intCast(index)]);
            if (!Inheritance.call(rectangleCollisionUtil.?, "isInside", .{ rectX1, rectY1, rectX2, rectY2, point.?.getX(), point.?.getY() })) {
                return false;
            }
            }
        }
        return true;
    }
    

    pub fn allPointsInsideCell(rectX1: i32, rectY1: i32, rectX2: i32, rectY2: i32, list: ?*BasicArrayList, xCellSize: i32, yCellSize: i32) bool {
        const rectangleCollisionUtil: ?*RectangleCollisionUtil = Inheritance.upcast(?*RectangleCollisionUtil, RectangleCollisionUtil.getInstance());
        var point: ?*GPoint = null;
        {
            var index: i32 = list.?.size();
            while (value_N66361: { index -= 1; break :value_N66361 index; } >= 0) {
            point = Inheritance.cast(?*GPoint, list.?.objectArray[@intCast(index)]);
            if (!Inheritance.call(rectangleCollisionUtil.?, "isInside", .{ rectX1, rectY1, rectX2, rectY2, point.?.getX() * xCellSize, point.?.getY() * yCellSize })) {
                return false;
            }
            }
        }
        return true;
    }
};

