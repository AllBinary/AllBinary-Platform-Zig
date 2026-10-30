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
// package org.allbinary.media.image.comparison

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

// Java interface: an implementation is a pointer and a table of functions
pub const ImageComparatorConstraintsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getMaxNonMatchingPixelDeltasFn: *const fn (pointer: *anyopaque) i32,
    isCollisionWithAvoidRectanglesFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle) bool,
    isCollisionWithAvoidRectanglesFn: *const fn (pointer: *anyopaque, point: ?*GPoint) bool,
    isColorAllowedFn: *const fn (pointer: *anyopaque, frame: i32, point: ?*GPoint, color: ?*Color) bool,
    isImageValidFn: *const fn (pointer: *anyopaque, bufferedImage: ?*BufferedImage) bool,
    isFrameAllowedFn: *const fn (pointer: *anyopaque, frame: i32) bool,

    pub fn getMaxNonMatchingPixelDeltas(self: *Self) i32 {
        return self.getMaxNonMatchingPixelDeltasFn(self.pointer);
    }

    pub fn isCollisionWithAvoidRectangles(self: *Self, rectangle: ?*Rectangle) bool {
        return self.isCollisionWithAvoidRectanglesFn(self.pointer, rectangle);
    }

    pub fn isCollisionWithAvoidRectangles(self: *Self, point: ?*GPoint) bool {
        return self.isCollisionWithAvoidRectanglesFn(self.pointer, point);
    }

    pub fn isColorAllowed(self: *Self, frame: i32, point: ?*GPoint, color: ?*Color) bool {
        return self.isColorAllowedFn(self.pointer, frame, point, color);
    }

    pub fn isImageValid(self: *Self, bufferedImage: ?*BufferedImage) bool {
        return self.isImageValidFn(self.pointer, bufferedImage);
    }

    pub fn isFrameAllowed(self: *Self, frame: i32) bool {
        return self.isFrameAllowedFn(self.pointer, frame);
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
            fn getMaxNonMatchingPixelDeltas(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxNonMatchingPixelDeltas").getMaxNonMatchingPixelDeltas();
            }
            fn isCollisionWithAvoidRectangles(pointer: *anyopaque, rectangle: ?*Rectangle) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isCollisionWithAvoidRectangles").isCollisionWithAvoidRectangles(rectangle);
            }
            fn isCollisionWithAvoidRectangles(pointer: *anyopaque, point: ?*GPoint) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isCollisionWithAvoidRectangles").isCollisionWithAvoidRectangles(point);
            }
            fn isColorAllowed(pointer: *anyopaque, frame: i32, point: ?*GPoint, color: ?*Color) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isColorAllowed").isColorAllowed(frame, point, color);
            }
            fn isImageValid(pointer: *anyopaque, bufferedImage: ?*BufferedImage) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isImageValid").isImageValid(bufferedImage);
            }
            fn isFrameAllowed(pointer: *anyopaque, frame: i32) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isFrameAllowed").isFrameAllowed(frame);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getMaxNonMatchingPixelDeltasFn = Methods.getMaxNonMatchingPixelDeltas, .isCollisionWithAvoidRectanglesFn = Methods.isCollisionWithAvoidRectangles, .isCollisionWithAvoidRectanglesFn = Methods.isCollisionWithAvoidRectangles, .isColorAllowedFn = Methods.isColorAllowed, .isImageValidFn = Methods.isImageValid, .isFrameAllowedFn = Methods.isFrameAllowed };
        return this;
    }
};

