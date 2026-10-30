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
// package org.allbinary.animation.image.sprite

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const AnimationFactorySpriteScaleUtil = @import("org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.zig").AnimationFactorySpriteScaleUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AllBinaryAdjustedSpriteRotationAnimation = @import("org/allbinary/animation/image/sprite/AllBinaryAdjustedSpriteRotationAnimation.zig").AllBinaryAdjustedSpriteRotationAnimation;
const AllBinarySpriteRotationAnimation = @import("org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation.zig").AllBinarySpriteRotationAnimation;

pub const AllBinarySpriteRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    animationFactorySpriteScaleUtil: ?*AnimationFactorySpriteScaleUtil = null,
    // Implements ProceduralAnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.animationFactorySpriteScaleUtil = Inheritance.upcast(?*AnimationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.getInstance());
    }
    

    // throws Exception
    pub fn createWHDY(image: ?*Image, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinarySpriteRotationAnimationFactory {
        const spriteRotationAnimationFactory: ?*AllBinarySpriteRotationAnimationFactory = Inheritance.callStatic(AllBinarySpriteRotationAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), (image.?.getHeight() >> @intCast(2)), (image.?.getHeight() >> @intCast(2)), 0, 0, animationBehaviorFactory });
        _ = Inheritance.call(spriteRotationAnimationFactory.?, "initWH", .{ dx, dy });
        return spriteRotationAnimationFactory;
    }
    

    // throws Exception
    pub fn createWH(image: ?*Image, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinarySpriteRotationAnimationFactory {
        return Inheritance.upcast(?*AllBinarySpriteRotationAnimationFactory, Inheritance.callStatic(AllBinarySpriteRotationAnimationFactory, "createWHDY", .{ image, 0, 0, animationBehaviorFactory }));
    }
    

    // throws Exception
    pub fn createDXY(image: ?*Image, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinarySpriteRotationAnimationFactory {
        const spriteRotationAnimationFactory: ?*AllBinarySpriteRotationAnimationFactory = Inheritance.callStatic(AllBinarySpriteRotationAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), image.?.getHeight(), image.?.getHeight(), 0, 0, animationBehaviorFactory });
        _ = Inheritance.call(spriteRotationAnimationFactory.?, "init", .{ dx, dy });
        return spriteRotationAnimationFactory;
    }
    

    // throws Exception
    pub fn createDXYQ(image: ?*Image, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinarySpriteRotationAnimationFactory {
        const spriteRotationAnimationFactory: ?*AllBinarySpriteRotationAnimationFactory = Inheritance.callStatic(AllBinarySpriteRotationAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), (image.?.getHeight() >> @intCast(2)), (image.?.getHeight() >> @intCast(2)), 0, 0, animationBehaviorFactory });
        _ = Inheritance.call(spriteRotationAnimationFactory.?, "init", .{ dx, dy });
        return spriteRotationAnimationFactory;
    }
    

    // throws Exception
    pub fn createQ(image: ?*Image, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinarySpriteRotationAnimationFactory {
        return Inheritance.callStatic(AllBinarySpriteRotationAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), (image.?.getHeight() >> @intCast(2)), (image.?.getHeight() >> @intCast(2)), 0, 0, animationBehaviorFactory });
    }
    

    // throws Exception
    pub fn createWHF(image: ?*Image, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*AllBinarySpriteRotationAnimationFactory {
        return Inheritance.callStatic(AllBinarySpriteRotationAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), image.?.getHeight(), image.?.getHeight(), 0, 0, animationBehaviorFactory });
    }
    

    pub fn create7(image: ?*Image, sequenceArray: []i32, width: i32, height: i32, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, sequenceArray, width, height, dx, dy, animationBehaviorFactory }).*;
        this.initFields();
        if (Object.same(animationBehaviorFactory, AnimationBehaviorFactory.getInstance())) {
            _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, dx: i32, dy: i32) void {
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy), dy);
    }
    

    pub fn initWH(self: *Self, dx: i32, dy: i32) void {
        _ = Inheritance.call(self, "init", .{ dx, dy });
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx += (divide_N67977: { const left_N67977 = -Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width; const right_N67977 = 5; break :divide_N67977 if (comptime @typeInfo(@TypeOf(left_N67977)) == .int or @TypeOf(left_N67977) == comptime_int) @divTrunc(left_N67977, right_N67977) else left_N67977 / right_N67977; });
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy += (divide_N68038: { const left_N68038 = -Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height; const right_N68038 = 5; break :divide_N68038 if (comptime @typeInfo(@TypeOf(left_N68038)) == .int or @TypeOf(left_N68038) == comptime_int) @divTrunc(left_N68038, right_N68038) else left_N68038 / right_N68038; });
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const sprite: ?*Sprite = Inheritance.upcast(?*Sprite, Inheritance.call(self.animationFactorySpriteScaleUtil.?, "createImage", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinaryAdjustedSpriteRotationAnimation, "create5", .{ sprite, Inheritance.receiver(self, "getImage").getImage(), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AllBinarySpriteRotationAnimation, "create3", .{ sprite, Inheritance.receiver(self, "getImage").getImage(), Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        _ = animationInterface;
        return Inheritance.upcast(?*Animation, Inheritance.call(self, "getInstance", .{ 0 }));
    }
};

