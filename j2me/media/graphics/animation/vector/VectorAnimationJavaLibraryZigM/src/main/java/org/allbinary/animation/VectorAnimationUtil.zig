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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const VectorAnimationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorAnimationUtil";
    var instance: ?*VectorAnimationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = VectorAnimationUtil.create();
    }
    

    pub fn getInstance() ?*VectorAnimationUtil {
        return Inheritance.upcast(?*VectorAnimationUtil, VectorAnimationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn toAnimationArrayFromListOfPointListWithPointsPerFrame(self: *Self, vector: ?*BasicArrayList, pointsPerFrame: i32) [][][]i32 {
        const size: i32 = vector.?.size();
        const points: [][][]i32 = undefined // Otherwise - newArray - 3
;
        var nextBasicArrayList: ?*BasicArrayList = null;
        var framePoints: [][]i32 = &.{};
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextBasicArrayList = Inheritance.cast(?*BasicArrayList, vector.?.objectArray[@intCast(index)]);
            framePoints = Inheritance.upcast(@TypeOf(framePoints), Inheritance.call(self, "toFrameArrayFromPointBasicArrayList", .{ nextBasicArrayList }));
            {
                var pointIndex: i32 = 0;
                while (pointIndex < @as(i32, @intCast(framePoints.len))) : (pointIndex += 1) {
                points[@intCast(index)][@intCast(pointIndex)][@intCast(0)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(pointIndex)][@intCast(0)]), framePoints[@intCast(pointIndex)][@intCast(0)]);
                points[@intCast(index)][@intCast(pointIndex)][@intCast(1)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(pointIndex)][@intCast(1)]), framePoints[@intCast(pointIndex)][@intCast(1)]);
                }
            }
            }
        }
        return points;
    }
    

    pub fn toAnimationArrayFromListOfPointList(self: *Self, vector: ?*BasicArrayList) [][][]i32 {
        const size: i32 = vector.?.size();
        const points: [][][]i32 = undefined // Otherwise - newArray - 3
;
        var nextBasicArrayList: ?*BasicArrayList = null;
        var framePoints: [][]i32 = &.{};
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextBasicArrayList = Inheritance.cast(?*BasicArrayList, vector.?.objectArray[@intCast(index)]);
            framePoints = Inheritance.upcast(@TypeOf(framePoints), Inheritance.call(self, "toFrameArrayFromPointBasicArrayList", .{ nextBasicArrayList }));
            points[@intCast(index)] = Inheritance.upcast(@TypeOf(points[@intCast(index)]), array_N66779: { const array_N66779_array = allocator.alloc([]i32, @intCast(@as(i32, @intCast(framePoints.len)))) catch unreachable; for (array_N66779_array) |*array_N66779_row| { array_N66779_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N66779_row.*, 0); } break :array_N66779 array_N66779_array; });
            {
                var pointIndex: i32 = 0;
                while (pointIndex < @as(i32, @intCast(framePoints.len))) : (pointIndex += 1) {
                points[@intCast(index)][@intCast(pointIndex)][@intCast(0)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(pointIndex)][@intCast(0)]), framePoints[@intCast(pointIndex)][@intCast(0)]);
                points[@intCast(index)][@intCast(pointIndex)][@intCast(1)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(pointIndex)][@intCast(1)]), framePoints[@intCast(pointIndex)][@intCast(1)]);
                }
            }
            }
        }
        return points;
    }
    

    pub fn toFrameArrayFromPointBasicArrayList(self: *Self, list: ?*BasicArrayList) [][]i32 {
        _ = self;
        const points: [][]i32 = array_N67217: { const array_N67217_array = allocator.alloc([]i32, @intCast(list.?.size())) catch unreachable; for (array_N67217_array) |*array_N67217_row| { array_N67217_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N67217_row.*, 0); } break :array_N67217 array_N67217_array; };
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const nextPoint: ?*GPoint = Inheritance.cast(?*GPoint, list.?.objectArray[@intCast(index)]);
            points[@intCast(index)][@intCast(0)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(0)]), nextPoint.?.getX());
            points[@intCast(index)][@intCast(1)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(1)]), nextPoint.?.getY());
            }
        }
        return points;
    }
};

