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
// package org.allbinary.collision

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

pub const RectangleCollisionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.collision.RectangleCollisionUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isCollision(rectangle: ?*Rectangle, point: ?*GPoint) bool {
        if (point.?.getX() > (@as(i32, @intCast(rectangle.?.x)) + rectangle.?.getWidth()) or point.?.getY() > (@as(i32, @intCast(rectangle.?.y)) + rectangle.?.getHeight()) or point.?.getX() < rectangle.?.x or point.?.getY() < rectangle.?.y) {
            return false;
        } else {
            return true;
        }
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn isCollision(rectangle1: ?*Rectangle, rectangle2: ?*Rectangle) bool {
        return Inheritance.callStatic(RectangleCollisionUtil, "isCollision", .{ rectangle1.?.x, rectangle1.?.y, rectangle1.?.x + rectangle1.?.width, rectangle1.?.y + rectangle1.?.height, rectangle2.?.x, rectangle2.?.y, rectangle2.?.x + rectangle2.?.width, rectangle2.?.y + rectangle2.?.height });
    }
    

    pub fn isCollision8(rectX1: i32, rectY1: i32, rectX2: i32, rectY2: i32, rect2X1: i32, rect2Y1: i32, rect2X2: i32, rect2Y2: i32) bool {
        if (rect2X1 >= rectX2 or rect2Y1 >= rectY2 or rect2X2 <= rectX1 or rect2Y2 <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
};

