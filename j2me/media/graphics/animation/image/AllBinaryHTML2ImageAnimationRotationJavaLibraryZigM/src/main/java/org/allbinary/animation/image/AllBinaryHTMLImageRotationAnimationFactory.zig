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
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const AllBinaryAdjustedHTMLImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryAdjustedHTMLImageRotationAnimation.zig").AllBinaryAdjustedHTMLImageRotationAnimation;
const AllBinaryHTMLImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryHTMLImageRotationAnimation.zig").AllBinaryHTMLImageRotationAnimation;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;

pub const AllBinaryHTMLImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    angleIncrement: i16 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    // throws Exception
    pub fn createFactoryADXY(image: ?*Image, width: i32, height: i32, dx: i32, dy: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinaryHTMLImageRotationAnimationFactory {
        const htmlImageRotationAnimationFactory: ?*AllBinaryHTMLImageRotationAnimationFactory = Inheritance.callStatic(AllBinaryHTMLImageRotationAnimationFactory, "create5", .{ image, width, height, angleIncrement, animationBehaviorFactory });
        _ = Inheritance.call(htmlImageRotationAnimationFactory.?, "init", .{ dx, dy });
        return htmlImageRotationAnimationFactory;
    }
    

    pub fn create5(image: ?*Image, width: i32, height: i32, angleIncrement: i16, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        this.angleIncrement = angleIncrement;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, dx: i32, dy: i32) void {
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy), dy);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDy), dy);
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "createImage", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
        const copyOfScaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCopyUtil.getInstance().?, "createImage", .{ scaledImage }));
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "processAdjust", .{ self });
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryAdjustedHTMLImageRotationAnimation, "create7", .{ scaledImage, copyOfScaledImage, Inheritance.callStatic(AngleInfo, "getInstance", .{ self.getAngleIncrement() }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryHTMLImageRotationAnimation, "create5", .{ scaledImage, copyOfScaledImage, Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), AngleFactory.getInstance().?.TOTAL_ANGLE, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
    

    pub fn getAngleIncrement(self: *Self) i16 {
        return self.angleIncrement;
    }
};

