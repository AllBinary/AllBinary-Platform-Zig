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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const SingletonAnimationInterfaceFactory = @import("org/allbinary/animation/SingletonAnimationInterfaceFactory.zig").SingletonAnimationInterfaceFactory;
const AnimationFrameToImageUtil = @import("org/allbinary/image/AnimationFrameToImageUtil.zig").AnimationFrameToImageUtil;
const ImageAnimation = @import("org/allbinary/animation/image/ImageAnimation.zig").ImageAnimation;

pub const ImageAnimationSingletonInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory";
    base: SingletonAnimationInterfaceFactory = undefined,
    

    pub fn create3(animationInterface: ?*Animation, width: i32, height: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SingletonAnimationInterfaceFactory, "create1", .{ Inheritance.callStatic(ImageAnimation, "create2", .{ Inheritance.call(AnimationFrameToImageUtil.getInstance().?, "getInstanceWH", .{ width, height, animationInterface }), AnimationBehavior.getInstance() }) }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

