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
const SpecialAnimation = @import("org/allbinary/animation/special/SpecialAnimation.zig").SpecialAnimation;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;

pub const NullSpecialAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.NullSpecialAnimationFactory";
    pub const java_interfaces = .{ AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface };
    // Implements AnimationInterfaceFactoryInterface
    // Implements ProceduralAnimationInterfaceFactoryInterface
    var NULL_SPECIAL_ANIMATION_FACTORY: ?*NullSpecialAnimationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_SPECIAL_ANIMATION_FACTORY = NullSpecialAnimationFactory.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getFactoryInstance() ?*NullSpecialAnimationFactory {
        return Inheritance.upcast(?*NullSpecialAnimationFactory, NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY);
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        _ = self;
        return Inheritance.upcast(?*Animation, SpecialAnimation.getInstance());
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        _ = animationInterface;
        _ = self;
        return Inheritance.upcast(?*Animation, SpecialAnimation.getInstance());
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

