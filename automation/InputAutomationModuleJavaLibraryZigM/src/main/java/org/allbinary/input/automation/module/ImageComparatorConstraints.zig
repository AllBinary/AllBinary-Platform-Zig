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
// package org.allbinary.input.automation.module

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Color = @import("java/awt/Color.zig").Color;
// const Rectangle = @import("java/awt/Rectangle.zig").Rectangle;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const RectangleCollisionUtil = @import("org/allbinary/collision/RectangleCollisionUtil.zig").RectangleCollisionUtil;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageComparatorConstraintsInterface = @import("org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface.zig").ImageComparatorConstraintsInterface;

pub const ImageComparatorConstraints = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.ImageComparatorConstraints";
    logUtil: ?*LogUtil = null,
    avoidVector: ?*BasicArrayList = null,
    maxNonMatchingPixelDeltas: i32 = 0,
    doImageComparisonEveryNthFrame: i32 = 0,
    // Implements ImageComparatorConstraintsInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.avoidVector = null;
        this.maxNonMatchingPixelDeltas = 0;
        
    }
    

    pub fn create1(doImageComparisonEveryNthFrame: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.doImageComparisonEveryNthFrame = doImageComparisonEveryNthFrame;
        _ = Inheritance.call(this, "setAvoidVector", .{ BasicArrayListD.create() });
        return this;
    }
    

    pub fn getAvoidVector(self: *Self) ?*BasicArrayList {
        return self.avoidVector;
    }
    

    pub fn isColorAllowed(self: *Self, frame: i32, point: ?*GPoint, color: ?*Color) bool {
        _ = frame;
        _ = point;
        _ = color;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isCollisionWithAvoidRectangles(self: *Self, rectangle: ?*Rectangle) bool {
        var isCollsionWithAvoidRectangles: bool = false;
        const avoidVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getAvoidVector());
        const size: i32 = avoidVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const avoidRectangle: ?*Rectangle = Inheritance.cast(?*Rectangle, Inheritance.call(avoidVector.?, "get", .{ index }));
            if (Inheritance.callStatic(RectangleCollisionUtil, "isCollision", .{ avoidRectangle, rectangle })) {
                isCollsionWithAvoidRectangles = true;
            }
            }
        }
        return isCollsionWithAvoidRectangles;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn isCollisionWithAvoidRectangles(self: *Self, point: ?*GPoint) bool {
        var isCollsionWithAvoidRectangles: bool = false;
        const avoidVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getAvoidVector());
        const size: i32 = avoidVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const avoidRectangle: ?*Rectangle = Inheritance.cast(?*Rectangle, Inheritance.call(avoidVector.?, "get", .{ index }));
            if (Inheritance.callStatic(RectangleCollisionUtil, "isCollision", .{ avoidRectangle, point })) {
                isCollsionWithAvoidRectangles = true;
                break;
            }
            }
        }
        return isCollsionWithAvoidRectangles;
    }
    

    pub fn setAvoidVector(self: *Self, avoidVector: ?*BasicArrayList) void {
        self.avoidVector = avoidVector;
    }
    

    pub fn getMaxNonMatchingPixelDeltas(self: *Self) i32 {
        return self.maxNonMatchingPixelDeltas;
    }
    

    pub fn setMaxNonMatchingPixelDeltas(self: *Self, maxNonMatchingPixelDeltas: i32) void {
        self.maxNonMatchingPixelDeltas = maxNonMatchingPixelDeltas;
    }
    

    pub fn isFrameAllowed(self: *Self, frame: i32) bool {
        const remainder: i32 = (@rem((frame + 1), self.doImageComparisonEveryNthFrame));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal(" Frame: "), frame), String.literal(" remainder: ")), remainder), String.literal(" this.doImageComparisonEveryNthFrame: ")), self.doImageComparisonEveryNthFrame), self, String.literal("isCollisionWithAvoidRectangles") });
        if (remainder == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn isImageValid(self: *Self, bufferedImage: ?*BufferedImage) bool {
        _ = bufferedImage;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn log(self: *Self) void {
        const avoidVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getAvoidVector());
        const size: i32 = avoidVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const avoidRectangle: ?*Rectangle = Inheritance.cast(?*Rectangle, Inheritance.call(avoidVector.?, "get", .{ index }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Avoid Rectangle: "), avoidRectangle), self, String.literal("log") });
            }
        }
    }
};

