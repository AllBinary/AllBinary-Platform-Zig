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
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const NullRotationAnimation2 = @import("org/allbinary/animation/NullRotationAnimation2.zig").NullRotationAnimation2;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const Exception = @import("java/lang/Exception.zig").Exception;

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
        this.NULL_ROTATION_ANIMATION_ARRAY = array_N65687: { const array_N65687_array = allocator.alloc(?*RotationAnimation, @intCast(0)) catch unreachable; @memset(array_N65687_array, null); break :array_N65687 array_N65687_array; };
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
};

