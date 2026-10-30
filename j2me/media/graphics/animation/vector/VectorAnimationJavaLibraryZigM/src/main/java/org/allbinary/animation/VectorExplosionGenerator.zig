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
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const RandomRotationFactory = @import("org/allbinary/graphics/pipeline/RandomRotationFactory.zig").RandomRotationFactory;
const RandomTranslation = @import("org/allbinary/graphics/pipeline/RandomTranslation.zig").RandomTranslation;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const VectorAnimationUtil = @import("org/allbinary/animation/VectorAnimationUtil.zig").VectorAnimationUtil;
const VectorExplosionType = @import("org/allbinary/animation/VectorExplosionType.zig").VectorExplosionType;

pub const VectorExplosionGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorExplosionGenerator";
    RANDOM: ?*VectorExplosionType = null,
    ROTATION: ?*VectorExplosionType = null,
    vectorAnimationUtil: ?*VectorAnimationUtil = null,
    randomRotationFactory: ?*RandomRotationFactory = null,
    var instance: ?*VectorExplosionGenerator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = VectorExplosionGenerator.create();
    }

    fn initFields(this: *Self) void {
        this.RANDOM = VectorExplosionType.create();
        this.ROTATION = VectorExplosionType.create();
        this.vectorAnimationUtil = Inheritance.upcast(?*VectorAnimationUtil, VectorAnimationUtil.getInstance());
        this.randomRotationFactory = Inheritance.upcast(?*RandomRotationFactory, RandomRotationFactory.getInstance());
    }
    

    pub fn getInstance() ?*VectorExplosionGenerator {
        return Inheritance.upcast(?*VectorExplosionGenerator, VectorExplosionGenerator.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn createList(self: *Self, list: ?*BasicArrayList, howMuch: i32, @"type": ?*VectorExplosionType) ?*BasicArrayList {
        var point: ?*GPoint = null;
        const size: i32 = list.?.size();
        const points: [][]i32 = array_N66130: { const array_N66130_array = allocator.alloc([]i32, @intCast(size)) catch unreachable; for (array_N66130_array) |*array_N66130_row| { array_N66130_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N66130_row.*, 0); } break :array_N66130 array_N66130_array; };
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            point = Inheritance.cast(?*GPoint, list.?.objectArray[@intCast(index)]);
            points[@intCast(index)][@intCast(0)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(0)]), point.?.getX());
            points[@intCast(index)][@intCast(1)] = Inheritance.upcast(@TypeOf(points[@intCast(index)][@intCast(1)]), point.?.getY());
            }
        }
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "createListFromPoints", .{ list, points, howMuch, @"type" }));
    }
    

    // throws Exception
    pub fn getInstance3(self: *Self, points: [][]i32, howMuch: i32, @"type": ?*VectorExplosionType) [][][]i32 {
        const pointsBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getInstanceStartFrame", .{ points, howMuch, @"type", true }));
        const tempBasicArrayList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, pointsBasicArrayList.?.objectArray[@intCast(0)]);
        const newPoints: [][][]i32 = Inheritance.call(self.vectorAnimationUtil.?, "toAnimationArrayFromListOfPointListWithPointsPerFrame", .{ pointsBasicArrayList, tempBasicArrayList.?.size() });
        return newPoints;
    }
    

    // throws Exception
    pub fn getInstanceStartFrame(self: *Self, points: [][]i32, howMuch: i32, @"type": ?*VectorExplosionType, startFrame: bool) ?*BasicArrayList {
        { // try
            const pointsBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ howMuch }));
            _ = Inheritance.call(pointsBasicArrayList.?, "add", .{ Inheritance.call(self, "createPointsBasicArrayList", .{ points }) });
            var frameIndex: i32 = 0;
            var tempBasicArrayList: ?*BasicArrayList = null;
            var pointBasicArrayList: ?*BasicArrayList = null;
            while (frameIndex < howMuch) {
                tempBasicArrayList = Inheritance.cast(?*BasicArrayList, pointsBasicArrayList.?.objectArray[@intCast(frameIndex)]);
                pointBasicArrayList = Inheritance.upcast(@TypeOf(pointBasicArrayList), Inheritance.call(self, "createListFromPoints", .{ tempBasicArrayList, points, howMuch, @"type" }));
                _ = Inheritance.call(pointsBasicArrayList.?, "add", .{ pointBasicArrayList });
                frameIndex += 1;
            }
            if (!startFrame) {
                _ = Inheritance.call(pointsBasicArrayList.?, "removeAt", .{ 0 });
            }
            return pointsBasicArrayList;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn createListFromPoints(self: *Self, tempBasicArrayList: ?*BasicArrayList, points: [][]i32, howMuch: i32, @"type": ?*VectorExplosionType) ?*BasicArrayList {
        var index: i32 = 0;
        const pointBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var sectionBasicArrayList: ?*BasicArrayList = null;
        while (index < @as(i32, @intCast(points.len))) {
            sectionBasicArrayList = Inheritance.upcast(@TypeOf(sectionBasicArrayList), BasicArrayListD.create());
            while (points[@intCast(index)][@intCast(0)] != 1000) {
                _ = Inheritance.call(sectionBasicArrayList.?, "add", .{ tempBasicArrayList.?.objectArray[@intCast(index)] });
                index += 1;
                if (index >= @as(i32, @intCast(points.len))) {
                    break;
                }
            }
            sectionBasicArrayList = Inheritance.upcast(@TypeOf(sectionBasicArrayList), Inheritance.callStatic(RandomTranslation, "getInstance", .{ sectionBasicArrayList, howMuch }));
            if (Object.same(@"type", self.ROTATION)) {
                sectionBasicArrayList = Inheritance.upcast(@TypeOf(sectionBasicArrayList), Inheritance.call(self.randomRotationFactory.?, "getInstanceList", .{ sectionBasicArrayList, howMuch }));
            }
            const size: i32 = sectionBasicArrayList.?.size();
            {
                var index2: i32 = 0;
                while (index2 < size) : (index2 += 1) {
                _ = Inheritance.call(pointBasicArrayList.?, "add", .{ sectionBasicArrayList.?.objectArray[@intCast(index2)] });
                }
            }
            if (index >= @as(i32, @intCast(points.len))) {
                break;
            } else if (points[@intCast(index)][@intCast(0)] == 1000) {
                _ = Inheritance.call(pointBasicArrayList.?, "add", .{ tempBasicArrayList.?.objectArray[@intCast(index)] });
                index += 1;
            }
        }
        return pointBasicArrayList;
    }
    

    // throws Exception
    pub fn createPointsBasicArrayList(self: *Self, points: [][]i32) ?*BasicArrayList {
        _ = self;
        if (@as(i32, @intCast(points.len)) == 0) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Points Provided"); break :exception error.Exception; }});
        }
        const firstPointBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ @as(i32, @intCast(points.len)) }));
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(points.len))) : (index += 1) {
            _ = Inheritance.call(firstPointBasicArrayList.?, "add", .{ Inheritance.call(pointFactory.?, "createXY", .{ points[@intCast(index)][@intCast(0)], points[@intCast(index)][@intCast(1)] }) });
            }
        }
        return firstPointBasicArrayList;
    }
};

