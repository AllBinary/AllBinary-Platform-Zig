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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const Long = @import("java/lang/Long.zig").Long;

// Java interface: an implementation is a pointer and a table of functions
pub const MotionRectangleConstraintsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getMaxMotionRectanglesFn: *const fn (pointer: *anyopaque) i32,
    getMinDimensionFn: *const fn (pointer: *anyopaque) ?*Dimension,
    getMinAreaFn: *const fn (pointer: *anyopaque) i32,
    getMaxDimensionFn: *const fn (pointer: *anyopaque) ?*Dimension,
    isTooSmallFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle) bool,
    isAreaTooSmallFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle) bool,
    isTooBigFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle) bool,
    isValidFn: *const fn (pointer: *anyopaque, frame: ?*Long, bufferedImage: ?*BufferedImage, rectangle: ?*Rectangle) bool,

    pub fn getMaxMotionRectangles(self: *Self) i32 {
        return self.getMaxMotionRectanglesFn(self.pointer);
    }

    pub fn getMinDimension(self: *Self) ?*Dimension {
        return self.getMinDimensionFn(self.pointer);
    }

    pub fn getMinArea(self: *Self) i32 {
        return self.getMinAreaFn(self.pointer);
    }

    pub fn getMaxDimension(self: *Self) ?*Dimension {
        return self.getMaxDimensionFn(self.pointer);
    }

    pub fn isTooSmall(self: *Self, rectangle: ?*Rectangle) bool {
        return self.isTooSmallFn(self.pointer, rectangle);
    }

    pub fn isAreaTooSmall(self: *Self, rectangle: ?*Rectangle) bool {
        return self.isAreaTooSmallFn(self.pointer, rectangle);
    }

    pub fn isTooBig(self: *Self, rectangle: ?*Rectangle) bool {
        return self.isTooBigFn(self.pointer, rectangle);
    }

    pub fn isValid(self: *Self, frame: ?*Long, bufferedImage: ?*BufferedImage, rectangle: ?*Rectangle) bool {
        return self.isValidFn(self.pointer, frame, bufferedImage, rectangle);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getMaxMotionRectangles(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxMotionRectangles").getMaxMotionRectangles();
            }
            fn getMinDimension(pointer: *anyopaque) ?*Dimension {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Dimension, Inheritance.receiver(implementation, "getMinDimension").getMinDimension());
            }
            fn getMinArea(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMinArea").getMinArea();
            }
            fn getMaxDimension(pointer: *anyopaque) ?*Dimension {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Dimension, Inheritance.receiver(implementation, "getMaxDimension").getMaxDimension());
            }
            fn isTooSmall(pointer: *anyopaque, rectangle: ?*Rectangle) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isTooSmall").isTooSmall(rectangle);
            }
            fn isAreaTooSmall(pointer: *anyopaque, rectangle: ?*Rectangle) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isAreaTooSmall").isAreaTooSmall(rectangle);
            }
            fn isTooBig(pointer: *anyopaque, rectangle: ?*Rectangle) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isTooBig").isTooBig(rectangle);
            }
            fn isValid(pointer: *anyopaque, frame: ?*Long, bufferedImage: ?*BufferedImage, rectangle: ?*Rectangle) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isValid").isValid(frame, bufferedImage, rectangle);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getMaxMotionRectanglesFn = Methods.getMaxMotionRectangles, .getMinDimensionFn = Methods.getMinDimension, .getMinAreaFn = Methods.getMinArea, .getMaxDimensionFn = Methods.getMaxDimension, .isTooSmallFn = Methods.isTooSmall, .isAreaTooSmallFn = Methods.isAreaTooSmall, .isTooBigFn = Methods.isTooBig, .isValidFn = Methods.isValid };
        return this;
    }
};

