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
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const ImageToRotationImageArrayUtil = @import("org/allbinary/media/image/ImageToRotationImageArrayUtil.zig").ImageToRotationImageArrayUtil;
const AdjustedImageArrayRotationAnimation = @import("org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.zig").AdjustedImageArrayRotationAnimation;
const ImageArrayRotationAnimationInfo = @import("org/allbinary/animation/image/ImageArrayRotationAnimationInfo.zig").ImageArrayRotationAnimationInfo;

//TWB - Adjustments should be done in the resource creation and not at the animation level
pub const PooledImageArrayRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory";
    allBinaryImageRotationAnimationInfo: ?Object = null,
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.allBinaryImageRotationAnimationInfo = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        
    }
    

    // throws Exception
    pub fn createFactory(image: ?*Image, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*PooledImageArrayRotationAnimationFactory {
        const totalAngle: i32 = @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE));
        const angleIncrement: i32 = (@divTrunc(totalAngle, Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity()));
        return Inheritance.callStatic(PooledImageArrayRotationAnimationFactory, "create7", .{ image, image.?.getWidth(), image.?.getHeight(), -(image.?.getWidth() >> @intCast(2)), -(image.?.getHeight() >> @intCast(2)), angleIncrement, animationBehaviorFactory });
    }
    

    // throws Exception
    pub fn createDXY(image: ?*Image, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*PooledImageArrayRotationAnimationFactory {
        const totalAngle: i32 = @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE));
        const angleIncrement: i32 = (@divTrunc(totalAngle, Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity()));
        return Inheritance.callStatic(PooledImageArrayRotationAnimationFactory, "create7", .{ image, image.?.getWidth(), image.?.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory });
    }
    

    pub fn create7(image: ?*Image, width: i32, height: i32, dx: i32, dy: i32, angleIncrement: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        _ = width;
        _ = height;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.animationBehaviorFactory = animationBehaviorFactory;
        const totalAngle: i32 = @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE));
        const imageArray: []?*Image = Inheritance.call(ImageToRotationImageArrayUtil.getInstance().?, "generate", .{ image, angleIncrement, totalAngle });
        this.allBinaryImageRotationAnimationInfo = Inheritance.upcast(@TypeOf(this.allBinaryImageRotationAnimationInfo), Inheritance.callStatic(ImageArrayRotationAnimationInfo, "create5", .{ imageArray, angleIncrement, totalAngle, dx, dy }));
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedImageArrayRotationAnimation, "createAdjustedImageArrayRotationAnimationInfo", .{ self.allBinaryImageRotationAnimationInfo, self.animationBehaviorFactory.?.getOrCreateInstance() }));
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

