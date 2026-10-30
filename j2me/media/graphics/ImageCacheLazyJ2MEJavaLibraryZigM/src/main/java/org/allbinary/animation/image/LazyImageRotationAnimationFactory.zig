// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const LazyImageRotationAnimation = @import("org/allbinary/animation/image/LazyImageRotationAnimation.zig").LazyImageRotationAnimation;

pub const LazyImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.LazyImageRotationAnimationFactory";
    layoutIndex: i32 = 0,
    animationInterfaceFactoryInterface: ?*BaseImageAnimationFactory = null,
    scaleProperties: ?*ScaleProperties = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        
        
        this.scaleProperties = Inheritance.upcast(?*ScaleProperties, ScaleProperties.instance);
    }
    

    pub fn create3(layoutIndex: i32, associatedLazyAnimationId: i32, animationInterfaceFactoryInterface: ?*BaseImageAnimationFactory) *Self {
        _ = associatedLazyAnimationId;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.layoutIndex = layoutIndex;
        this.animationInterfaceFactoryInterface = animationInterfaceFactoryInterface;
        ImageCacheFactory.getInstance().?.hasAnyLazyAnimationFactories = true;
        if (Object.same(this.animationInterfaceFactoryInterface.?.animationBehaviorFactory, AnimationBehaviorFactory.getInstance())) {
            _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this });
        }
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        if (Inheritance.receiverOf(self.animationInterfaceFactoryInterface.?.getImage().?, "isReady").isReady()) {
            _ = Inheritance.call(self.animationInterfaceFactoryInterface.?, "setInitialScale", .{ self.scaleProperties });
            return Inheritance.upcast(?*Animation, Inheritance.call(self.animationInterfaceFactoryInterface.?, "getInstance", .{ instanceId }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(LazyImageRotationAnimation, "create5", .{ self.layoutIndex, instanceId, self.scaleProperties, self.animationInterfaceFactoryInterface, Inheritance.receiverOf(self.animationInterfaceFactoryInterface.?.animationBehaviorFactory.?, "getOrCreateInstance").getOrCreateInstance() }));
        }
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        self.scaleProperties = scaleProperties;
    }
};

