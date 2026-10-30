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
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicGraphicsPipeline = @import("org/allbinary/graphics/pipeline/BasicGraphicsPipeline.zig").BasicGraphicsPipeline;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const VectorAnimationUtil = @import("org/allbinary/animation/VectorAnimationUtil.zig").VectorAnimationUtil;

pub const VectorMirrorGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorMirrorGenerator";
    logUtil: ?*LogUtil = null,
    vectorAnimationUtil: ?*VectorAnimationUtil = null,
    var instance: ?*VectorMirrorGenerator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = VectorMirrorGenerator.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.vectorAnimationUtil = Inheritance.upcast(?*VectorAnimationUtil, VectorAnimationUtil.getInstance());
    }
    

    pub fn getInstance() ?*VectorMirrorGenerator {
        return Inheritance.upcast(?*VectorMirrorGenerator, VectorMirrorGenerator.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance2(self: *Self, points: [][][]i32, width: i32) [][][]i32 {
        { // try
            const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
            var pointBasicArrayList: ?*BasicArrayList = null;
            var nextPoints: [][]i32 = &.{};
            var size2: i32 = 0;
            const size: i32 = @as(i32, @intCast(points.len));
            const pointsBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ size }));
            {
                var frame: i32 = 0;
                while (frame < size) : (frame += 1) {
                nextPoints = Inheritance.upcast(@TypeOf(nextPoints), points[@intCast(frame)]);
                size2 = @as(i32, @intCast(nextPoints.len));
                pointBasicArrayList = Inheritance.upcast(@TypeOf(pointBasicArrayList), Inheritance.callStatic(BasicArrayListS, "create1", .{ size2 }));
                {
                    var index: i32 = 0;
                    while (index < size2) : (index += 1) {
                    _ = Inheritance.call(pointBasicArrayList.?, "add", .{ Inheritance.call(pointFactory.?, "createXY", .{ nextPoints[@intCast(index)][@intCast(0)], nextPoints[@intCast(index)][@intCast(1)] }) });
                    }
                }
                _ = Inheritance.call(pointsBasicArrayList.?, "add", .{ pointBasicArrayList });
                }
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(points.len))) : (index += 1) {
                _ = Inheritance.call(pointsBasicArrayList.?, "add", .{ Inheritance.call(self, "getInstance", .{ Inheritance.cast(?*BasicArrayList, pointsBasicArrayList.?.objectArray[@intCast(index)]), width }) });
                }
            }
            const newPoints: [][][]i32 = Inheritance.call(self.vectorAnimationUtil.?, "toAnimationArrayFromListOfPointList", .{ pointsBasicArrayList });
            return newPoints;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             return NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY_ARRAY;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance2(self: *Self, pointBasicArrayList: ?*BasicArrayList, width: i32) ?*BasicArrayList {
        _ = self;
        const graphicsPipe: ?*BasicGraphicsPipeline = Inheritance.callStatic(BasicGraphicsPipeline, "create1", .{ pointBasicArrayList });
        _ = graphicsPipe.?.createMatrix();
        _ = Inheritance.call(graphicsPipe.?, "mirror", .{ width });
        return Inheritance.upcast(?*BasicArrayList, graphicsPipe.?.getMatrix());
    }
};

