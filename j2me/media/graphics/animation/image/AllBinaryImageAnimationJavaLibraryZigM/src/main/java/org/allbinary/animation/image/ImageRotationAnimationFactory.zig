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
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const AdjustedImageBaseRotationAnimation = @import("org/allbinary/animation/image/AdjustedImageBaseRotationAnimation.zig").AdjustedImageBaseRotationAnimation;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const ImageBaseRotationAnimation = @import("org/allbinary/animation/image/ImageBaseRotationAnimation.zig").ImageBaseRotationAnimation;

pub const ImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageRotationAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    angleIncrement: i16 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create7(image: ?*Image, width: i32, height: i32, dx: i32, dy: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        this.angleIncrement = angleIncrement;
        Inheritance.fieldPointer(this, "animationFactoryInitializationVisitor").*.?.dx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "animationFactoryInitializationVisitor").*.?.dx), dx);
        Inheritance.fieldPointer(this, "animationFactoryInitializationVisitor").*.?.dy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "animationFactoryInitializationVisitor").*.?.dy), dy);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "processAdjust", .{ self });
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedImageBaseRotationAnimation, "create6", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(ImageBaseRotationAnimation, "create4", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
    

    pub fn getAngleIncrementP(self: *Self) i16 {
        return self.angleIncrement;
    }
};

