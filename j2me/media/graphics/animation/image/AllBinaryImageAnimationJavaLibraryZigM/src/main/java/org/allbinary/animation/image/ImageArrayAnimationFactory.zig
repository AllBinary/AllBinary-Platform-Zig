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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const AdjustedImageArrayAnimation = @import("org/allbinary/animation/image/AdjustedImageArrayAnimation.zig").AdjustedImageArrayAnimation;
const ImageArrayAnimation = @import("org/allbinary/animation/image/ImageArrayAnimation.zig").ImageArrayAnimation;

pub const ImageArrayAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArrayAnimationFactory";
    dx: i32 = 0,
    dy: i32 = 0,
    imageArray: []?*Image = &.{},
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.dx = 0;
        this.dy = 0;
        
        
    }
    

    pub fn create4(imageArray: []?*Image, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.imageArray = imageArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.dx = dx;
        this.dy = dy;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        if (self.dx != 0 or self.dy != 0) {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedImageArrayAnimation, "create4", .{ self.imageArray, self.dx, self.dy, self.animationBehaviorFactory.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(ImageArrayAnimation, "create2", .{ self.imageArray, AnimationBehavior.getInstance() }));
        }
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

