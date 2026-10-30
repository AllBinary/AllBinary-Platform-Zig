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
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const VectorInfo = @import("org/allbinary/vector/VectorInfo.zig").VectorInfo;
const VectorAnimationUtil = @import("org/allbinary/animation/VectorAnimationUtil.zig").VectorAnimationUtil;

pub const VectorRotationGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorRotationGenerator";
    logUtil: ?*LogUtil = null,
    vectorAnimationUtil: ?*VectorAnimationUtil = null,
    angleFactory: ?*AngleFactory = null,
    var instance: ?*VectorRotationGenerator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = VectorRotationGenerator.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.vectorAnimationUtil = Inheritance.upcast(?*VectorAnimationUtil, VectorAnimationUtil.getInstance());
        this.angleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
    }
    

    pub fn getInstance() ?*VectorRotationGenerator {
        return Inheritance.upcast(?*VectorRotationGenerator, VectorRotationGenerator.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance1(self: *Self, vectorRotationInfo: ?*VectorInfo) [][][]i32 {
        return Inheritance.call(self, "getInstanceFrames", .{ vectorRotationInfo.?.getWidth(), vectorRotationInfo.?.getHeight(), vectorRotationInfo.?.getPoints(), vectorRotationInfo.?.getTotalFrames() });
    }
    

    pub fn getInstanceFrames(self: *Self, width: i32, height: i32, points: [][]i32, frames: i32) [][][]i32 {
        { // try
            const totalAngle: i16 = self.angleFactory.?.TOTAL_ANGLE;
            const angleIncrement: i32 = @divTrunc(@as(i32, @intCast(totalAngle)), frames);
            const pointsBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ @divTrunc(@as(i32, @intCast(totalAngle)), angleIncrement) }));
            const pointBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ @as(i32, @intCast(points.len)) }));
            const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
            const size: i32 = @as(i32, @intCast(points.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(pointBasicArrayList.?, "add", .{ Inheritance.call(pointFactory.?, "createXY", .{ points[@intCast(index)][@intCast(0)], points[@intCast(index)][@intCast(1)] }) });
                }
            }
            var index: i32 = 0;
            while (index < @as(i32, @intCast(totalAngle))) {
                _ = Inheritance.call(pointsBasicArrayList.?, "add", .{ Inheritance.call(self, "getListAtAngle", .{ width, height, pointBasicArrayList, Inheritance.call(self.angleFactory.?, "getAt", .{ index }) }) });
                index += angleIncrement;
            }
            const newPoints: [][][]i32 = Inheritance.call(self.vectorAnimationUtil.?, "toAnimationArrayFromListOfPointListWithPointsPerFrame", .{ pointsBasicArrayList, pointBasicArrayList.?.size() });
            return newPoints;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             return NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY_ARRAY;
    }
    

    // throws Exception
    pub fn getListAtAngle(self: *Self, width: i32, height: i32, pointBasicArrayList: ?*BasicArrayList, angle: ?*Angle) ?*BasicArrayList {
        _ = self;
        const graphicsPipe: ?*BasicGraphicsPipeline = Inheritance.callStatic(BasicGraphicsPipeline, "create1", .{ pointBasicArrayList });
        _ = graphicsPipe.?.createMatrix();
        _ = Inheritance.call(graphicsPipe.?, "translate", .{ -(width >> @intCast(1)), -(height >> @intCast(1)) });
        _ = Inheritance.call(graphicsPipe.?, "rotateToAngle", .{ angle });
        _ = Inheritance.call(graphicsPipe.?, "translate", .{ (width >> @intCast(1)), (height >> @intCast(1)) });
        return Inheritance.upcast(?*BasicArrayList, graphicsPipe.?.getMatrix());
    }
};

