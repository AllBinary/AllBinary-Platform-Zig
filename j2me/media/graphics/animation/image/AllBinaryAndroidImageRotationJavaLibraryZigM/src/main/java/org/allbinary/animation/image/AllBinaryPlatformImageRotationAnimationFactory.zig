// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AllBinaryAndroidImageRotationAnimationFactory = @import("org/allbinary/animation/image/AllBinaryAndroidImageRotationAnimationFactory.zig").AllBinaryAndroidImageRotationAnimationFactory;

pub const AllBinaryPlatformImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory";
    base: AllBinaryAndroidImageRotationAnimationFactory = undefined,
    

    pub fn create6(image: ?*Image, width: i32, height: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory, resizeCanvasForRotation: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryAndroidImageRotationAnimationFactory, "create6", .{ image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

