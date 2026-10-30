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
// package org.allbinary.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const PointsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.vector.PointsUtil";
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
    

    pub fn adjustXY(self: *Self, points: [][][]i32, x: i32, y: i32) [][][]i32 {
        _ = self;
        const size: i32 = @as(i32, @intCast(points.len));
        const newPoints: [][][]i32 = undefined // Otherwise - newArray - 3
;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const size2: i32 = @as(i32, @intCast(points[@intCast(index)].len));
            newPoints[@intCast(index)] = Inheritance.upcast(@TypeOf(newPoints[@intCast(index)]), array_N65918: { const array_N65918_array = allocator.alloc([]i32, @intCast(size2)) catch unreachable; for (array_N65918_array) |*array_N65918_row| { array_N65918_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N65918_row.*, 0); } break :array_N65918 array_N65918_array; });
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                if (points[@intCast(index)][@intCast(index2)][@intCast(0)] != 1000) {
                    newPoints[@intCast(index)][@intCast(index2)][@intCast(0)] = Inheritance.upcast(@TypeOf(newPoints[@intCast(index)][@intCast(index2)][@intCast(0)]), points[@intCast(index)][@intCast(index2)][@intCast(0)] + x);
                    newPoints[@intCast(index)][@intCast(index2)][@intCast(1)] = Inheritance.upcast(@TypeOf(newPoints[@intCast(index)][@intCast(index2)][@intCast(1)]), points[@intCast(index)][@intCast(index2)][@intCast(1)] + y);
                } else {
                    newPoints[@intCast(index)][@intCast(index2)][@intCast(0)] = 1000;
                    newPoints[@intCast(index)][@intCast(index2)][@intCast(1)] = 1000;
                }
                }
            }
            }
        }
        return newPoints;
    }
    

    pub fn adjust(self: *Self, points: [][]i32, both: i32) [][]i32 {
        return Inheritance.call(self, "adjust", .{ points, both, both });
    }
    

    pub fn adjust3(self: *Self, points: [][]i32, x: i32, y: i32) [][]i32 {
        _ = self;
        const newPoints: [][]i32 = array_N66739: { const array_N66739_array = allocator.alloc([]i32, @intCast(@as(i32, @intCast(points.len)))) catch unreachable; for (array_N66739_array) |*array_N66739_row| { array_N66739_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N66739_row.*, 0); } break :array_N66739 array_N66739_array; };
        {
            var index2: i32 = 0;
            while (index2 < @as(i32, @intCast(points.len))) : (index2 += 1) {
            if (points[@intCast(index2)][@intCast(0)] != 1000) {
                newPoints[@intCast(index2)][@intCast(0)] = Inheritance.upcast(@TypeOf(newPoints[@intCast(index2)][@intCast(0)]), points[@intCast(index2)][@intCast(0)] + x);
                newPoints[@intCast(index2)][@intCast(1)] = Inheritance.upcast(@TypeOf(newPoints[@intCast(index2)][@intCast(1)]), points[@intCast(index2)][@intCast(1)] + y);
            } else {
                newPoints[@intCast(index2)][@intCast(0)] = 1000;
                newPoints[@intCast(index2)][@intCast(1)] = 1000;
            }
            }
        }
        return newPoints;
    }
};

