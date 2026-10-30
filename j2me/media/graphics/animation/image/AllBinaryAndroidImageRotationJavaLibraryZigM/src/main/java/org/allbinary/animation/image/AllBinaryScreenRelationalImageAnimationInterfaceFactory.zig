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
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const ScreenRelationalUtil = @import("org/allbinary/graphics/displayable/ScreenRelationalUtil.zig").ScreenRelationalUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const ImageScaleUtil = @import("org/allbinary/media/image/ImageScaleUtil.zig").ImageScaleUtil;
const AndroidImageInterface = @import("org/microemu/android/device/AndroidImageInterface.zig").AndroidImageInterface;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const ImageAnimation = @import("org/allbinary/animation/image/ImageAnimation.zig").ImageAnimation;

pub const AllBinaryScreenRelationalImageAnimationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryScreenRelationalImageAnimationInterfaceFactory";
    base: BaseImageAnimationFactory = undefined,
    lastImage: ?*Image = null,

    fn initFields(this: *Self) void {
        this.lastImage = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
    }
    

    pub fn create2(image: ?*Image, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        if (!Object.same(this.lastImage, NullImage.NULL_IMAGE)) {
            const androidImageInterface: ?*AndroidImageInterface = Inheritance.cast(?*AndroidImageInterface, this.lastImage);
            _ = Inheritance.receiverOf(androidImageInterface.?.getBitmap().?, "recycle").recycle();
        }
        const scale: f32 = Inheritance.call(ScreenRelationalUtil.getInstance().?, "getScaleImage", .{ image });
        this.lastImage = Inheritance.upcast(@TypeOf(this.lastImage), Inheritance.call(ImageScaleUtil.getInstance().?, "createImage", .{ GameFeatureImageCacheFactory.getInstance(), Inheritance.receiver(this, "getImage").getImage(), scale, scale, false }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(ImageAnimation, "create2", .{ self.lastImage, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
    }
};

