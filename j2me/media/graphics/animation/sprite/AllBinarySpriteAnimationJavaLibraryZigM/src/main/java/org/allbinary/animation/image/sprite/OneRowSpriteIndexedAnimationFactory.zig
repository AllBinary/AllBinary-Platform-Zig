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
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const BasicColorUtil = @import("org/allbinary/graphics/color/BasicColorUtil.zig").BasicColorUtil;
const AnimationFactorySpriteScaleUtil = @import("org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.zig").AnimationFactorySpriteScaleUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AdjustedSpriteIndexedAnimation = @import("org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation.zig").AdjustedSpriteIndexedAnimation;
const SpriteIndexedAnimation = @import("org/allbinary/animation/image/sprite/SpriteIndexedAnimation.zig").SpriteIndexedAnimation;

pub const OneRowSpriteIndexedAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    animationFactorySpriteScaleUtil: ?*AnimationFactorySpriteScaleUtil = null,

    fn initFields(this: *Self) void {
        this.animationFactorySpriteScaleUtil = Inheritance.upcast(?*AnimationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.getInstance());
    }
    

    // throws Exception
    pub fn createFactoryDX(image: ?*Image, dx: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*OneRowSpriteIndexedAnimationFactory {
        const oneRowSpriteIndexedAnimationFactory: ?*OneRowSpriteIndexedAnimationFactory = Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), image.?.getHeight(), image.?.getHeight(), 0, 0, animationBehaviorFactory });
        _ = Inheritance.call(oneRowSpriteIndexedAnimationFactory.?, "initW", .{ dx });
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    // throws Exception
    pub fn createFactoryDXY(image: ?*Image, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*OneRowSpriteIndexedAnimationFactory {
        const oneRowSpriteIndexedAnimationFactory: ?*OneRowSpriteIndexedAnimationFactory = Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), image.?.getHeight(), image.?.getHeight(), 0, 0, animationBehaviorFactory });
        _ = Inheritance.call(oneRowSpriteIndexedAnimationFactory.?, "init", .{ dx, dy });
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    // throws Exception
    pub fn createFactoryWH(image: ?*Image, width: i32, height: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*OneRowSpriteIndexedAnimationFactory {
        return Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory });
    }
    

    // throws Exception
    pub fn createFactory(image: ?*Image, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*OneRowSpriteIndexedAnimationFactory {
        return Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), image.?.getHeight(), image.?.getHeight(), 0, 0, animationBehaviorFactory });
    }
    

    pub fn create7(image: ?*Image, sequenceArray: []i32, width: i32, height: i32, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, sequenceArray, width, height, dx, dy, animationBehaviorFactory }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, dx: i32, dy: i32) void {
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx), dx);
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy), dy);
    }
    

    pub fn initW(self: *Self, dx: i32) void {
        _ = Inheritance.call(self, "init", .{ dx, 0 });
        Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx += -(Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width >> @intCast(2));
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const sprite: ?*Sprite = Inheritance.upcast(?*Sprite, Inheritance.call(self.animationFactorySpriteScaleUtil.?, "createImage", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
        if (Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx != 0 or Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy != 0) {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(AdjustedSpriteIndexedAnimation, "create6", .{ sprite, Inheritance.receiver(self, "getImage").getImage(), BasicColorUtil.getInstance().?.ZERO_ARRAY, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dx, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.dy, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        } else {
            return Inheritance.upcast(?*Animation, Inheritance.callStatic(SpriteIndexedAnimation, "create4", .{ sprite, Inheritance.receiver(self, "getImage").getImage(), BasicColorUtil.getInstance().?.ZERO_ARRAY, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
        }
    }
};

