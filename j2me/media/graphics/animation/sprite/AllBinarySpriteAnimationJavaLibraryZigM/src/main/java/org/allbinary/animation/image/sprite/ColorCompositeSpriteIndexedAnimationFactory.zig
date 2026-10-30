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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const AnimationFactorySpriteScaleUtil = @import("org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.zig").AnimationFactorySpriteScaleUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const SpriteIndexedAnimation = @import("org/allbinary/animation/image/sprite/SpriteIndexedAnimation.zig").SpriteIndexedAnimation;

pub const ColorCompositeSpriteIndexedAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory";
    base: BaseImageAnimationFactory = undefined,
    animationFactorySpriteScaleUtil: ?*AnimationFactorySpriteScaleUtil = null,
    basicColorArray: []?*BasicColor = &.{},
    // Implements ProceduralAnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.animationFactorySpriteScaleUtil = Inheritance.upcast(?*AnimationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.getInstance());
        
    }
    

    pub fn create5(image: ?*Image, basicColorArray: []?*BasicColor, width: i32, height: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory }).*;
        this.initFields();
        this.basicColorArray = basicColorArray;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const sprite: ?*Sprite = Inheritance.upcast(?*Sprite, Inheritance.call(self.animationFactorySpriteScaleUtil.?, "createImage", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.width, Inheritance.fieldPointer(self, "animationFactoryInitializationVisitor").*.?.height, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleWidth, Inheritance.fieldPointer(self, "scaleProperties").*.?.scaleHeight }));
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(SpriteIndexedAnimation, "create4", .{ sprite, Inheritance.receiver(self, "getImage").getImage(), self.basicColorArray, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        _ = animationInterface;
        return Inheritance.upcast(?*Animation, Inheritance.call(self, "getInstance", .{ 0 }));
    }
};

