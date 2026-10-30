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
// const Rectangle = @import("java/awt/Rectangle.zig").Rectangle;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const MotionRectangle = @import("org/allbinary/media/image/comparison/motion/MotionRectangle.zig").MotionRectangle;
const MotionRectangleConstraintsInterface = @import("org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface.zig").MotionRectangleConstraintsInterface;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;

pub const ConstrainedMotionRectangles = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles";
    base: MotionRectangles = undefined,
    logUtil: ?*LogUtil = null,
    motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface = null,
    const NAME: ?*String = String.literal("constrainedMotionRectangles_");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.motionRectangleConstraintsInterface = null;
    }
    

    pub fn create2(motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface, motionRectangles: ?*MotionRectangles) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MotionRectangles, "create2", .{ ConstrainedMotionRectangles.NAME, motionRectangles.?.getImageComparisonResult() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setMotionRectangleConstraintsInterface", .{ motionRectangleConstraintsInterface });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn applyMotionRectangleConstraints(self: *Self, motionRectangles: ?*MotionRectangles) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Start - Size Before: "), Inheritance.receiverOf(motionRectangles.?.getVector().?, "size").size()), self, String.literal("applyMotionRectangleConstraints") });
        const bufferedImageArray: []?*BufferedImage = Inheritance.receiverOf(motionRectangles.?.getImageComparisonResult().?, "getBufferedImages").getBufferedImages();
        const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, bufferedImageArray[@intCast(1)]);
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const vector2: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, motionRectangles.?.getVector());
        const size: i32 = vector2.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const motionRectangle: ?*MotionRectangle = Inheritance.cast(?*MotionRectangle, Inheritance.call(vector2.?, "get", .{ index }));
            const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, motionRectangle.?.getRectangle());
            const isTooSmall: bool = Inheritance.call(self.getMotionRectangleConstraintsInterface().?, "isTooSmall", .{ rectangle });
            if (isTooSmall) {
                continue;
            }
            const isAreaTooSmall: bool = Inheritance.call(self.getMotionRectangleConstraintsInterface().?, "isAreaTooSmall", .{ rectangle });
            if (isAreaTooSmall) {
                continue;
            }
            const isTooBig: bool = Inheritance.call(self.getMotionRectangleConstraintsInterface().?, "isTooBig", .{ rectangle });
            if (isTooBig) {
                continue;
            }
            const isValid: bool = Inheritance.call(self.getMotionRectangleConstraintsInterface().?, "isValid", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getImageComparisonResult").getImageComparisonResult().?, "getFrameTwo").getFrameTwo(), bufferedImage, motionRectangle.?.getRectangle() });
            if (!isValid) {
                continue;
            }
            if (!isTooSmall and !isAreaTooSmall and !isTooBig and isValid) {
                _ = Inheritance.call(vector.?, "add", .{ motionRectangle });
            }
            }
        }
        _ = Inheritance.call(self, "setVector", .{ vector });
    }
    

    pub fn getMotionRectangleConstraintsInterface(self: *Self) ?*MotionRectangleConstraintsInterface {
        return self.motionRectangleConstraintsInterface;
    }
    

    pub fn setMotionRectangleConstraintsInterface(self: *Self, motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface) void {
        self.motionRectangleConstraintsInterface = motionRectangleConstraintsInterface;
    }
};

