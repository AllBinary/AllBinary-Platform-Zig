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
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ImageToRotationImageArrayUtil = @import("org/allbinary/media/image/ImageToRotationImageArrayUtil.zig").ImageToRotationImageArrayUtil;
const AdjustedImageArrayRotationAnimation = @import("org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.zig").AdjustedImageArrayRotationAnimation;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const ImageArrayRotationAnimation = @import("org/allbinary/animation/image/ImageArrayRotationAnimation.zig").ImageArrayRotationAnimation;

pub const AllBinaryArrayImageRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryArrayImageRotationAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    imageArray: []?*Image = &.{},
    angleIncrement: i32 = 0,

    fn initFields(this: *Self) void {
        this.imageArray = NullImage.NULL_IMAGE_ARRAY;
        
    }
    

    // throws Exception
    pub fn createFactory(image: ?*Image, dx: i32, dy: i32) ?*AllBinaryArrayImageRotationAnimationFactory {
        const arrayImageRotationAnimationFactory: ?*AllBinaryArrayImageRotationAnimationFactory = Inheritance.callStatic(AllBinaryArrayImageRotationAnimationFactory, "create5", .{ image, image.?.getWidth(), image.?.getHeight(), (divide_N65990: { const left_N65990 = AngleFactory.getInstance().?.TOTAL_ANGLE; const right_N65990 = Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity(); break :divide_N65990 if (comptime @typeInfo(@TypeOf(left_N65990)) == .int or @TypeOf(left_N65990) == comptime_int) @divTrunc(left_N65990, right_N65990) else left_N65990 / right_N65990; }), AnimationBehaviorFactory.getInstance() });
        _ = Inheritance.call(arrayImageRotationAnimationFactory.?, "initDXY", .{ dx, dy });
        return arrayImageRotationAnimationFactory;
    }
    

    // throws Exception
    pub fn createFactoryA(image: ?*Image, dx: i32, dy: i32, angleIncrement: i32) ?*AllBinaryArrayImageRotationAnimationFactory {
        const arrayImageRotationAnimationFactory: ?*AllBinaryArrayImageRotationAnimationFactory = Inheritance.callStatic(AllBinaryArrayImageRotationAnimationFactory, "create5", .{ image, image.?.getWidth(), image.?.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance() });
        _ = Inheritance.call(arrayImageRotationAnimationFactory.?, "initDXY", .{ dx, dy });
        return arrayImageRotationAnimationFactory;
    }
    

    pub fn create5(image: ?*Image, width: i32, height: i32, angleIncrement: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        this.angleIncrement = angleIncrement;
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = Inheritance.call(self, "setImageArray", .{ Inheritance.call(ImageToRotationImageArrayUtil.getInstance().?, "generate", .{ Inheritance.receiver(self, "getImage").getImage(), self.getAngleIncrement(), @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE)) }) });
    }
    

    pub fn initDXY(self: *Self, dx: i32, dy: i32) void {
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy), dy);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.originalDy), dy);
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const scaledImageArray: []?*Image = array_N67156: { const array_N67156_array = allocator.alloc(?*Image, @intCast(@as(i32, @intCast(self.imageArray.len)))) catch unreachable; @memset(array_N67156_array, null); break :array_N67156 array_N67156_array; };
        const size: i32 = @as(i32, @intCast(scaledImageArray.len));
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.receiver(self, "getImage").getImage());
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            scaledImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledImageArray[@intCast(index)]), Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "createImage", .{ image, image.?.getWidth(), image.?.getHeight(), Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
            }
        }
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "animationFactoryImageScaleUtil").*.?, "processAdjust", .{ self });
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedImageArrayRotationAnimation, "create6", .{ scaledImageArray, Inheritance.callStatic(AngleInfo, "getInstance", .{ @as(i16, @intCast(self.getAngleIncrement())) }), @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE)), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(ImageArrayRotationAnimation, "create4", .{ scaledImageArray, Inheritance.callStatic(AngleInfo, "getInstance", .{ @as(i16, @intCast(self.getAngleIncrement())) }), @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE)), Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
    

    pub fn setImageArray(self: *Self, imageArray: []?*Image) void {
        self.imageArray = imageArray;
    }
    

    pub fn getAngleIncrement(self: *Self) i32 {
        return self.angleIncrement;
    }
};

