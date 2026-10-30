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
// package org.allbinary.input.automation.module.generic.constraints

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const ImageComparatorConstraints = @import("org/allbinary/input/automation/module/ImageComparatorConstraints.zig").ImageComparatorConstraints;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NoImageComparatorConstraints = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.constraints.NoImageComparatorConstraints";
    base: ImageComparatorConstraints = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageComparatorConstraints, "create1", .{ 1 }).*;
        _ = Inheritance.call(this, "setMaxNonMatchingPixelDeltas", .{ @as(i32, std.math.maxInt(i32)) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isColorAllowed(self: *Self, frame: i32, point: ?*GPoint, color: ?*Color) bool {
        _ = frame;
        _ = point;
        _ = color;
        _ = self;
        return true;
    }
    

    pub fn isImageValid(self: *Self, bufferedImage: ?*BufferedImage) bool {
        _ = bufferedImage;
        _ = self;
        return true;
    }
};

