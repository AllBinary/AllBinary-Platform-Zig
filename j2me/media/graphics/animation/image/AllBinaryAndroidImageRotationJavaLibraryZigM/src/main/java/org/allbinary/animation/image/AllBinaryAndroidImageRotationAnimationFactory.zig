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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const AllBinaryAdjustedAndroidImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryAdjustedAndroidImageRotationAnimation.zig").AllBinaryAdjustedAndroidImageRotationAnimation;
const AllBinaryFlickerAndroidImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryFlickerAndroidImageRotationAnimation.zig").AllBinaryFlickerAndroidImageRotationAnimation;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;

pub const AllBinaryAndroidImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    angleIncrement: i16 = 0,
    resizeCanvasForRotation: bool = false,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    // throws Exception
    pub fn createFactory(image: ?*Image, width: i32, height: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinaryAndroidImageRotationAnimationFactory {
        return Inheritance.callStatic(AllBinaryAndroidImageRotationAnimationFactory, "create6", .{ image, width, height, @as(i16, @intCast(((divide_N65928: { const left_N65928 = AngleFactory.getInstance().?.TOTAL_ANGLE; const right_N65928 = Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity(); break :divide_N65928 if (comptime @typeInfo(@TypeOf(left_N65928)) == .int or @TypeOf(left_N65928) == comptime_int) @divTrunc(left_N65928, right_N65928) else left_N65928 / right_N65928; })))), animationBehaviorFactory, false });
    }
    

    // throws Exception
    pub fn createFactoryA(image: ?*Image, width: i32, height: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinaryAndroidImageRotationAnimationFactory {
        return Inheritance.callStatic(AllBinaryAndroidImageRotationAnimationFactory, "create6", .{ image, width, height, angleIncrement, animationBehaviorFactory, false });
    }
    

    // throws Exception
    pub fn createFactoryU(image: ?*Image, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinaryAndroidImageRotationAnimationFactory {
        const androidImageRotationAnimationFactory: ?*AllBinaryAndroidImageRotationAnimationFactory = Inheritance.callStatic(AllBinaryAndroidImageRotationAnimationFactory, "create6", .{ image, image.?.getWidth(), image.?.getHeight(), @as(i16, @intCast(((divide_N66434: { const left_N66434 = AngleFactory.getInstance().?.TOTAL_ANGLE; const right_N66434 = Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity(); break :divide_N66434 if (comptime @typeInfo(@TypeOf(left_N66434)) == .int or @TypeOf(left_N66434) == comptime_int) @divTrunc(left_N66434, right_N66434) else left_N66434 / right_N66434; })))), animationBehaviorFactory, false });
        _ = Inheritance.call(androidImageRotationAnimationFactory.?, "init", .{ -(image.?.getWidth() >> @intCast(2)), -(image.?.getHeight() >> @intCast(2)) });
        return androidImageRotationAnimationFactory;
    }
    

    // throws Exception
    pub fn createFactoryDXYU(image: ?*Image, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinaryAndroidImageRotationAnimationFactory {
        const androidImageRotationAnimationFactory: ?*AllBinaryAndroidImageRotationAnimationFactory = Inheritance.callStatic(AllBinaryAndroidImageRotationAnimationFactory, "create6", .{ image, image.?.getWidth(), image.?.getHeight(), @as(i16, @intCast(((divide_N66803: { const left_N66803 = AngleFactory.getInstance().?.TOTAL_ANGLE; const right_N66803 = Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity(); break :divide_N66803 if (comptime @typeInfo(@TypeOf(left_N66803)) == .int or @TypeOf(left_N66803) == comptime_int) @divTrunc(left_N66803, right_N66803) else left_N66803 / right_N66803; })))), animationBehaviorFactory, false });
        _ = Inheritance.call(androidImageRotationAnimationFactory.?, "init", .{ dx, dy });
        return androidImageRotationAnimationFactory;
    }
    

    // throws Exception
    pub fn createFactoryADXY(image: ?*Image, width: i32, height: i32, dx: i32, dy: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory, resizeCanvasForRotation: bool) ?*AllBinaryAndroidImageRotationAnimationFactory {
        const androidImageRotationAnimationFactory: ?*AllBinaryAndroidImageRotationAnimationFactory = Inheritance.callStatic(AllBinaryAndroidImageRotationAnimationFactory, "create6", .{ image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation });
        _ = Inheritance.call(androidImageRotationAnimationFactory.?, "init", .{ dx, dy });
        return androidImageRotationAnimationFactory;
    }
    

    pub fn init(self: *Self, dx: i32, dy: i32) void {
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy), dy);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDy), dy);
    }
    

    pub fn create6(image: ?*Image, width: i32, height: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory, resizeCanvasForRotation: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        this.angleIncrement = angleIncrement;
        this.resizeCanvasForRotation = resizeCanvasForRotation;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getCanvasImage(self: *Self) ?*Image {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (self.resizeCanvasForRotation and !Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            return Inheritance.upcast(?*Image, Inheritance.call(ImageCopyUtil.getInstance().?, "createImageScale", .{ Inheritance.receiver(self, "getImage").getImage(), 1.44, false }));
        } else {
            return Inheritance.upcast(?*Image, Inheritance.receiver(self, "getImage").getImage());
        }
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const canvasImage: ?*Image = Inheritance.upcast(?*Image, self.getCanvasImage());
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "createImage", .{ canvasImage, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
        const copyOfScaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCopyUtil.getInstance().?, "createImage", .{ scaledImage }));
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "processAdjust", .{ self });
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryAdjustedAndroidImageRotationAnimation, "create7", .{ scaledImage, copyOfScaledImage, Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryFlickerAndroidImageRotationAnimation, "create5", .{ scaledImage, copyOfScaledImage, Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
};

