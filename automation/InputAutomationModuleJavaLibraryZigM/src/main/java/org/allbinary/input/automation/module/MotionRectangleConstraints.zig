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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const MotionRectangleConstraintsInterface = @import("org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface.zig").MotionRectangleConstraintsInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const MotionRectangleConstraints = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.MotionRectangleConstraints";
    minDimension: ?*Dimension = null,
    maxDimension: ?*Dimension = null,
    maxMotionRectangles: i32 = 0,
    minArea: i32 = 0,
    // Implements MotionRectangleConstraintsInterface

    fn initFields(this: *Self) void {
        this.minDimension = null;
        this.maxDimension = null;
        this.maxMotionRectangles = 0;
        this.minArea = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getMinDimension(self: *Self) ?*Dimension {
        return self.minDimension;
    }
    

    pub fn getMaxDimension(self: *Self) ?*Dimension {
        return self.maxDimension;
    }
    

    pub fn isTooSmall(self: *Self, rectangle: ?*Rectangle) bool {
        if (rectangle.?.width < self.getMinDimension().?.width or rectangle.?.height < self.getMinDimension().?.height) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isAreaTooSmall(self: *Self, rectangle: ?*Rectangle) bool {
        if (rectangle.?.width * rectangle.?.height < self.getMinArea()) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isTooBig(self: *Self, rectangle: ?*Rectangle) bool {
        if (rectangle.?.width > self.getMaxDimension().?.width or rectangle.?.height > self.getMaxDimension().?.height) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn isValid(self: *Self, frame: ?*Long, bufferedImage: ?*BufferedImage, rectangle: ?*Rectangle) bool {
        _ = frame;
        _ = bufferedImage;
        _ = rectangle;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setMinDimension(self: *Self, minDimension: ?*Dimension) void {
        self.minDimension = minDimension;
    }
    

    pub fn setMaxDimension(self: *Self, maxDimension: ?*Dimension) void {
        self.maxDimension = maxDimension;
    }
    

    pub fn getMaxMotionRectangles(self: *Self) i32 {
        return self.maxMotionRectangles;
    }
    

    pub fn setMaxMotionRectangles(self: *Self, maxMotionRectangles: i32) void {
        self.maxMotionRectangles = maxMotionRectangles;
    }
    

    pub fn getMinArea(self: *Self) i32 {
        return self.minArea;
    }
    

    pub fn setMinArea(self: *Self, minArea: i32) void {
        self.minArea = minArea;
    }
};

