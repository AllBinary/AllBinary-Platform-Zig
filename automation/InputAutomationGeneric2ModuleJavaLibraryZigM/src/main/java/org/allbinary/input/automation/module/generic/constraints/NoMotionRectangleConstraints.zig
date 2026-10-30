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
const MotionRectangleConstraints = @import("org/allbinary/input/automation/module/MotionRectangleConstraints.zig").MotionRectangleConstraints;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const NoMotionRectangleConstraints = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.constraints.NoMotionRectangleConstraints";
    base: MotionRectangleConstraints = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MotionRectangleConstraints.create().*;
        _ = Inheritance.call(this, "setMinDimension", .{ Inheritance.callStatic(Dimension, "create2", .{ 0, 0 }) });
        _ = Inheritance.call(this, "setMinArea", .{ 0 });
        _ = Inheritance.call(this, "setMaxDimension", .{ Inheritance.callStatic(Dimension, "create2", .{ @as(i32, std.math.maxInt(i32)), @as(i32, std.math.maxInt(i32)) }) });
        _ = Inheritance.call(this, "setMaxMotionRectangles", .{ @as(i32, std.math.maxInt(i32)) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self, frame: ?*Long, bufferedImage: ?*BufferedImage, rectangle: ?*Rectangle) bool {
        _ = frame;
        _ = bufferedImage;
        _ = rectangle;
        _ = self;
        return true;
    }
};

