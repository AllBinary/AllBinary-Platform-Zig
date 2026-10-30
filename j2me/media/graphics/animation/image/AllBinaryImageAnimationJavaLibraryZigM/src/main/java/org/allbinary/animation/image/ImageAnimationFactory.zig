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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const OpenGLUtil = @import("org/allbinary/graphics/opengles/OpenGLUtil.zig").OpenGLUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AdjustedImageAnimation = @import("org/allbinary/animation/image/AdjustedImageAnimation.zig").AdjustedImageAnimation;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const ImageAnimation = @import("org/allbinary/animation/image/ImageAnimation.zig").ImageAnimation;

pub const ImageAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    

    // throws Exception
    pub fn createFactory(image: ?*Image) ?*ImageAnimationFactory {
        return Inheritance.callStatic(ImageAnimationFactory, "create6", .{ image, image.?.getWidth(), image.?.getHeight(), 0, 0, AnimationBehaviorFactory.getInstance() });
    }
    

    pub fn create6(image: ?*Image, width: i32, height: i32, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        var scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "createImage", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
        const openGLUtil: ?*OpenGLUtil = Inheritance.upcast(?*OpenGLUtil, OpenGLUtil.getInstance());
        scaledImage = Inheritance.upcast(@TypeOf(scaledImage), Inheritance.call(openGLUtil.?, "addImage", .{ scaledImage }));
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "processAdjust", .{ self });
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedImageAnimation, "create4", .{ scaledImage, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(ImageAnimation, "create2", .{ scaledImage, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
};

