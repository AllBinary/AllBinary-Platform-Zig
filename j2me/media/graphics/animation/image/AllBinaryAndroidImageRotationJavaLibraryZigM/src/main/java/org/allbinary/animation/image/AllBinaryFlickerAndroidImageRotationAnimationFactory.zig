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
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const AllBinaryFlickerAndroidImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryFlickerAndroidImageRotationAnimation.zig").AllBinaryFlickerAndroidImageRotationAnimation;

pub const AllBinaryFlickerAndroidImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimationFactory";
    image: ?*Image = null,
    angleIncrement: i16 = 0,
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.image = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        
        
    }
    

    pub fn create5(image: ?*Image, width: i32, height: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        _ = width;
        _ = height;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setImage", .{ image });
        this.angleIncrement = angleIncrement;
        this.animationBehaviorFactory = animationBehaviorFactory;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCopyUtil.getInstance().?, "createImage", .{ self.getImage() }));
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryFlickerAndroidImageRotationAnimation, "create5", .{ self.getImage(), image, Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), AngleFactory.getInstance().?.TOTAL_ANGLE, self.animationBehaviorFactory.?.getOrCreateInstance() }));
    }
    

    pub fn getAngleIncrement(self: *Self) i16 {
        return self.angleIncrement;
    }
    

    pub fn setImage(self: *Self, image: ?*Image) void {
        self.image = image;
    }
    

    pub fn getImage(self: *Self) ?*Image {
        return self.image;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

