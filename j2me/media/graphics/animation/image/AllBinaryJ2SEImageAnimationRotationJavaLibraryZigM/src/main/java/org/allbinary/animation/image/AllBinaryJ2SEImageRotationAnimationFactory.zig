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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const OpenGLUtil = @import("org/allbinary/graphics/opengles/OpenGLUtil.zig").OpenGLUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;
const AllBinaryAdjustedJ2SEImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryAdjustedJ2SEImageRotationAnimation.zig").AllBinaryAdjustedJ2SEImageRotationAnimation;
const AllBinaryJ2SEImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryJ2SEImageRotationAnimation.zig").AllBinaryJ2SEImageRotationAnimation;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;

pub const AllBinaryJ2SEImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    angleIncrementP: i16 = 0,
    resizeCanvasForRotation: bool = false,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    // throws Exception
    pub fn createDXY(image: ?*Image, width: i32, height: i32, dx: i32, dy: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory, resizeCanvasForRotation: bool) ?*AllBinaryJ2SEImageRotationAnimationFactory {
        const imageRotationAnimationFactory: ?*AllBinaryJ2SEImageRotationAnimationFactory = Inheritance.callStatic(AllBinaryJ2SEImageRotationAnimationFactory, "create6", .{ image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation });
        imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.dx = Inheritance.upcast(@TypeOf(imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.dx), dx);
        imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.dy = Inheritance.upcast(@TypeOf(imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.dy), dy);
        imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.originalDx = Inheritance.upcast(@TypeOf(imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.originalDx), dx);
        imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.originalDy = Inheritance.upcast(@TypeOf(imageRotationAnimationFactory.?.animationFactoryInitializationVisitor.?.originalDy), dy);
        return imageRotationAnimationFactory;
    }
    

    pub fn create6(image: ?*Image, width: i32, height: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory, resizeCanvasForRotation: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        this.angleIncrementP = angleIncrement;
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
        const imageCopyUtil: ?*ImageCopyUtil = Inheritance.upcast(?*ImageCopyUtil, ImageCopyUtil.getInstance());
        const canvasImage: ?*Image = Inheritance.upcast(?*Image, self.getCanvasImage());
        var scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "createImage", .{ canvasImage, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
        const openGLUtil: ?*OpenGLUtil = Inheritance.upcast(?*OpenGLUtil, OpenGLUtil.getInstance());
        scaledImage = Inheritance.upcast(@TypeOf(scaledImage), Inheritance.call(openGLUtil.?, "addImage", .{ scaledImage }));
        const copyOfScaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCopyUtil.?, "createImageForRotation", .{ scaledImage }));
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "processAdjust", .{ self });
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryAdjustedJ2SEImageRotationAnimation, "create7", .{ scaledImage, copyOfScaledImage, Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrementP }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryJ2SEImageRotationAnimation, "create5", .{ scaledImage, copyOfScaledImage, Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrementP }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
    

    pub fn getAngleIncrement(self: *Self) i16 {
        return self.angleIncrementP;
    }
};

