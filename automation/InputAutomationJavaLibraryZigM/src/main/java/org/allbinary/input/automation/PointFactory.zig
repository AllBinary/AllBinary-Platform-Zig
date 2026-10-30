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
// package org.allbinary.input.automation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const PointFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.PointFactory";
    var pointArray: [][]?*Point = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        pointArray = array_N65617: { const array_N65617_array = allocator.alloc([]?*Point, @intCast(3000)) catch unreachable; for (array_N65617_array) |*array_N65617_row| { array_N65617_row.* = allocator.alloc(?*Point, @intCast(3000)) catch unreachable; @memset(array_N65617_row.*, null); } break :array_N65617 array_N65617_array; };
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(x: i32, y: i32) ?*Point {
        var point: ?*Point = Inheritance.upcast(?*Point, PointFactory.pointArray[@intCast(x)][@intCast(y)]);
        if (point == null) {
            PointFactory.pointArray[@intCast(x)][@intCast(y)] = Inheritance.upcast(@TypeOf(PointFactory.pointArray[@intCast(x)][@intCast(y)]), Inheritance.callStatic(Point, "create2", .{ x, y }));
            point = PointFactory.pointArray[@intCast(x)][@intCast(y)];
        }
        return point;
    }
};

