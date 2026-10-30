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
// package org.allbinary.media.image.comparison.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const MotionRectangle = @import("org/allbinary/media/image/comparison/motion/MotionRectangle.zig").MotionRectangle;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;

pub const ConsolidateMotionRectangles = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles";
    base: MotionRectangles = undefined,
    logUtil: ?*LogUtil = null,
    const NAME: ?*String = String.literal("consolidatedMotionRectangles_");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(motionRectangles: ?*MotionRectangles) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MotionRectangles, "create2", .{ ConsolidateMotionRectangles.NAME, motionRectangles.?.getImageComparisonResult() }).*;
        this.initFields();
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, motionRectangles.?.getVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const motionRectangle: ?*MotionRectangle = Inheritance.cast(?*MotionRectangle, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(vector.?, "add", .{ motionRectangle.?.clone() });
            }
        }
        _ = this.consolidateMotionRectangles();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn consolidateMotionRectangles(self: *Self) void {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getVector").getVector());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Start - Size Before: "), vector.?.size()), self, String.literal("consolidateMotionRectangleConstraints") });
        const removeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const motionRectangle: ?*MotionRectangle = Inheritance.cast(?*MotionRectangle, Inheritance.call(vector.?, "get", .{ index }));
            {
                var i: i32 = index + 1;
                while (i < vector.?.size()) : (i += 1) {
                const motionRectangle2: ?*MotionRectangle = Inheritance.cast(?*MotionRectangle, Inheritance.call(vector.?, "get", .{ i }));
                const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, motionRectangle.?.getRectangle());
                const rectangle2: ?*Rectangle = Inheritance.upcast(?*Rectangle, motionRectangle2.?.getRectangle());
                const x2: i32 = rectangle.?.x + rectangle.?.width;
                const y2: i32 = rectangle.?.y + rectangle.?.height;
                const rightX: i32 = rectangle2.?.x + rectangle2.?.width;
                const bottomY: i32 = rectangle2.?.y + rectangle2.?.height;
                if (rectangle.?.x <= rectangle2.?.x and rectangle.?.y <= rectangle2.?.y and x2 >= rightX and y2 >= bottomY) {
                    _ = Inheritance.call(removeVector.?, "add", .{ motionRectangle2 });
                }
                }
            }
            }
        }
        _ = Inheritance.call(self, "remove", .{ removeVector });
    }
    

    pub fn remove(self: *Self, removeVector: ?*BasicArrayList) void {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getVector").getVector());
        const size: i32 = removeVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(vector.?, "remove", .{ Inheritance.call(removeVector.?, "get", .{ index }) });
            }
        }
    }
};

