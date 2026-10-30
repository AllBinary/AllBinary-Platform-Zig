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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const AnimationFrameToImageUtil = @import("org/allbinary/image/AnimationFrameToImageUtil.zig").AnimationFrameToImageUtil;

pub const IndexedAnimationToImageArrayUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.IndexedAnimationToImageArrayUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(width: i32, height: i32, sequentialAnimationInterface: ?*IndexedAnimation) []?*Image {
        const size: i32 = Inheritance.receiver(sequentialAnimationInterface.?, "getAnimationSize").getAnimationSize();
        const imageArray: []?*Image = array_N65686: { const array_N65686_array = allocator.alloc(?*Image, @intCast(size)) catch unreachable; @memset(array_N65686_array, null); break :array_N65686 array_N65686_array; };
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(sequentialAnimationInterface.?, "setFrame", .{ index });
            imageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(imageArray[@intCast(index)]), Inheritance.call(AnimationFrameToImageUtil.getInstance().?, "getInstanceWH", .{ width, height, sequentialAnimationInterface }));
            }
        }
        return imageArray;
    }
};

