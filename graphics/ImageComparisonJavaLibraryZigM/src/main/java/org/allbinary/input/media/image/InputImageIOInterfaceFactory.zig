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
// package org.allbinary.input.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CapturedImageInputOutput = @import("org/allbinary/input/media/image/capture/CapturedImageInputOutput.zig").CapturedImageInputOutput;
const ComparisonImageInputOutput = @import("org/allbinary/media/image/comparison/ComparisonImageInputOutput.zig").ComparisonImageInputOutput;
const MotionRectanglesImageInputOutput = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesImageInputOutput.zig").MotionRectanglesImageInputOutput;
const ImageIOInterface = @import("org/allbinary/media/image/io/ImageIOInterface.zig").ImageIOInterface;
const InputImageType = @import("org/allbinary/input/media/image/InputImageType.zig").InputImageType;

pub const InputImageIOInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.InputImageIOInterfaceFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(imageType: ?*InputImageType) ?*ImageIOInterface {
        if (Object.same(imageType, InputImageType.CAPTURE)) {
            return Inheritance.upcast(?*ImageIOInterface, CapturedImageInputOutput.create());
        } else if (Object.same(imageType, InputImageType.COMPARISON)) {
            return Inheritance.upcast(?*ImageIOInterface, ComparisonImageInputOutput.create());
        } else if (Object.same(imageType, InputImageType.MOTION)) {
            return Inheritance.upcast(?*ImageIOInterface, MotionRectanglesImageInputOutput.create());
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No ImageIOInterface for: "), Object.toString(Object.of(imageType))); break :exception error.Exception; }});
        }
    }
};

