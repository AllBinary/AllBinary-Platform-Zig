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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const IndexedAnimationBehavior = @import("org/allbinary/animation/IndexedAnimationBehavior.zig").IndexedAnimationBehavior;
const NullRotationAnimation = @import("org/allbinary/animation/NullRotationAnimation.zig").NullRotationAnimation;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;

pub const NullRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.NullRotationAnimationFactory";
    pub const java_interfaces = .{ AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface };
    NULL_ROTATION_ANIMATION_ARRAY: []?*RotationAnimation = &.{},
    NULL_ANIMATION: ?*Animation = null,
    // Implements AnimationInterfaceFactoryInterface
    // Implements ProceduralAnimationInterfaceFactoryInterface
    var NULL_ROTATION_ANIMATION_FACTORY: ?*NullRotationAnimationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ROTATION_ANIMATION_FACTORY = NullRotationAnimationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_ROTATION_ANIMATION_ARRAY = array_N65787: { const array_N65787_array = allocator.alloc(?*RotationAnimation, @intCast(0)) catch unreachable; @memset(array_N65787_array, null); break :array_N65787 array_N65787_array; };
        this.NULL_ANIMATION = Inheritance.upcast(?*Animation, NullRotationAnimation2.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getFactoryInstance() ?*NullRotationAnimationFactory {
        return Inheritance.upcast(?*NullRotationAnimationFactory, NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY);
    }
    

    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        return self.NULL_ANIMATION;
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        _ = animationInterface;
        return self.NULL_ANIMATION;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
    pub const NullRotationAnimation2 = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.animation.NullRotationAnimation2";
        base: NullRotationAnimation = undefined,
        

        pub fn create() *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
            _ = graphics;
            _ = x;
            _ = y;
            _ = self;
        }
    };
};

