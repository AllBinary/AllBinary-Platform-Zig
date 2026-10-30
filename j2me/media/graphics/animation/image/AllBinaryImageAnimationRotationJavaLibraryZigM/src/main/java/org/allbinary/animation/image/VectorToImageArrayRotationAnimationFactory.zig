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
const VectorAnimation = @import("org/allbinary/animation/VectorAnimation.zig").VectorAnimation;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const AnimationFrameToImageUtil = @import("org/allbinary/image/AnimationFrameToImageUtil.zig").AnimationFrameToImageUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const ImageToRotationImageArrayUtil = @import("org/allbinary/media/image/ImageToRotationImageArrayUtil.zig").ImageToRotationImageArrayUtil;
const VectorInfo = @import("org/allbinary/vector/VectorInfo.zig").VectorInfo;
const AdjustedImageArrayRotationAnimation = @import("org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.zig").AdjustedImageArrayRotationAnimation;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;

pub const VectorToImageArrayRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    imageArray: []?*Image = &.{},
    angleIncrement: i32 = 0,

    fn initFields(this: *Self) void {
        this.imageArray = NullImage.NULL_IMAGE_ARRAY;
        this.angleIncrement = 0;
    }
    

    pub fn create3(vectorInfo: ?*VectorInfo, basicColor: ?*BasicColor, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ Inheritance.call(AnimationFrameToImageUtil.getInstance().?, "getInstanceTranslate", .{ vectorInfo.?.getWidth(), vectorInfo.?.getHeight(), Inheritance.callStatic(VectorAnimation, "createVectorAnimation", .{ vectorInfo.?.getPoints(), basicColor, animationBehaviorFactory.?.getOrCreateInstance() }) }), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const angleFactory: ?*AngleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        self.angleIncrement = (divide_N66410: { const left_N66410 = angleFactory.?.TOTAL_ANGLE; const right_N66410 = Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity(); break :divide_N66410 if (comptime @typeInfo(@TypeOf(left_N66410)) == .int or @TypeOf(left_N66410) == comptime_int) @divTrunc(left_N66410, right_N66410) else left_N66410 / right_N66410; });
        self.imageArray = Inheritance.upcast(@TypeOf(self.imageArray), Inheritance.call(ImageToRotationImageArrayUtil.getInstance().?, "generate", .{ Inheritance.receiver(self, "getImage").getImage(), self.getAngleIncrement(), @as(i32, @intCast(angleFactory.?.TOTAL_ANGLE)) }));
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedImageArrayRotationAnimation, "create6", .{ self.imageArray, Inheritance.callStatic(AngleInfo, "getInstance", .{ @as(i16, @intCast(self.getAngleIncrement())) }), @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE)), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedImageArrayRotationAnimation, "createAnimation", .{ self.imageArray, Inheritance.callStatic(AngleInfo, "getInstance", .{ @as(i16, @intCast(self.angleIncrement)) }), @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE)), Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
    

    pub fn getAngleIncrement(self: *Self) i32 {
        return self.angleIncrement;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

