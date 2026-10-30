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
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const PixelDelta = @import("org/allbinary/media/image/comparison/pixel/PixelDelta.zig").PixelDelta;
const MotionRectangle = @import("org/allbinary/media/image/comparison/motion/MotionRectangle.zig").MotionRectangle;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;

pub const AllMotionRectangles = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.AllMotionRectangles";
    base: MotionRectangles = undefined,
    const NAME: ?*String = String.literal("allMotionRectangles_");
    

    pub fn create1(imageComparisonResult: ?*ImageComparisonResult) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MotionRectangles, "create2", .{ AllMotionRectangles.NAME, imageComparisonResult }).*;
        _ = Inheritance.call(this, "createMotionRectangles", .{ imageComparisonResult });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn createMotionRectangles(self: *Self, imageComparisonInfo: ?*ImageComparisonResult) void {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, imageComparisonInfo.?.getNonMatchingPixelVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const pixelDelta: ?*PixelDelta = Inheritance.cast(?*PixelDelta, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(self, "addPixelDeltaToAMotionRectangle", .{ pixelDelta });
            }
        }
    }
    

    // throws Exception
    pub fn addPixelDeltaToExistingMotionRectangle(self: *Self, pixelDelta: ?*PixelDelta) bool {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getVector").getVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const motionRectangle: ?*MotionRectangle = Inheritance.cast(?*MotionRectangle, Inheritance.call(vector.?, "get", .{ index }));
            if (Inheritance.call(self, "shouldPixelDeltaPartOfMotionRectangle", .{ motionRectangle, pixelDelta })) {
                var newWidth: i32 = Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getX").getX() - motionRectangle.?.getRectangle().?.x;
                var newHeight: i32 = Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getY").getY() - motionRectangle.?.getRectangle().?.y;
                if (newWidth < motionRectangle.?.getRectangle().?.width) {
                    newWidth = motionRectangle.?.getRectangle().?.width;
                }
                if (newHeight < motionRectangle.?.getRectangle().?.height) {
                    newHeight = motionRectangle.?.getRectangle().?.height;
                }
                _ = Inheritance.call(motionRectangle.?.getRectangle().?, "setSize", .{ newWidth, newHeight });
                return true;
            }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn addPixelDeltaToAMotionRectangle(self: *Self, pixelDelta: ?*PixelDelta) void {
        if (!Inheritance.call(self, "addPixelDeltaToExistingMotionRectangle", .{ pixelDelta })) {
            const newRectangle: ?*Rectangle = Inheritance.callStatic(Rectangle, "create4", .{ Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getX").getX(), Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getY").getY(), 1, 1 });
            const motionRectangle: ?*MotionRectangle = Inheritance.callStatic(MotionRectangle, "create1", .{ newRectangle });
            _ = Inheritance.call(motionRectangle.?.getPixelDeltaVector().?, "add", .{ pixelDelta });
            _ = Inheritance.call(Inheritance.receiver(self, "getVector").getVector().?, "add", .{ motionRectangle });
        }
    }
    

    // throws Exception
    pub fn shouldPixelDeltaPartOfMotionRectangle(self: *Self, motionRectangle: ?*MotionRectangle, pixelDelta: ?*PixelDelta) bool {
        var isPixelLeftOfTheRectangle: bool = false;
        if (motionRectangle.?.getRectangle().?.y > Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getY").getY()) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("PixelAboveTheRectangle"); break :exception error.Exception; }});
        }
        if (motionRectangle.?.getRectangle().?.x > Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getX").getX()) {
            isPixelLeftOfTheRectangle = true;
        }
        if (!isPixelLeftOfTheRectangle) {
            return Inheritance.call(self, "isPixelDeltaLikelyPartOfMotionRectangle", .{ motionRectangle, pixelDelta });
        }
        return false;
    }
    

    // throws Exception
    pub fn isPixelDeltaLikelyPartOfMotionRectangle(self: *Self, motionRectangle: ?*MotionRectangle, pixelDelta: ?*PixelDelta) bool {
        const maxX: i32 = motionRectangle.?.getRectangle().?.x + motionRectangle.?.getRectangle().?.width;
        const maxY: i32 = motionRectangle.?.getRectangle().?.y + motionRectangle.?.getRectangle().?.height;
        const horizontalDistance: i32 = Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getX").getX() - maxX;
        const verticalDistance: i32 = Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getY").getY() - maxY;
        if (horizontalDistance < Inheritance.fieldPointer(self, "MAX_PIXEL_DISTANCE_THRESHOLD").* and verticalDistance < Inheritance.fieldPointer(self, "MAX_PIXEL_DISTANCE_THRESHOLD").*) {
            return true;
        }
        return false;
    }
};

