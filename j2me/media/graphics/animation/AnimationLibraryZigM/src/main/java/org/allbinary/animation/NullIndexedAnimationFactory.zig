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
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const IndexedAnimationBehavior = @import("org/allbinary/animation/IndexedAnimationBehavior.zig").IndexedAnimationBehavior;
const NullIndexedAnimation = @import("org/allbinary/animation/NullIndexedAnimation.zig").NullIndexedAnimation;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;

pub const NullIndexedAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.NullIndexedAnimationFactory";
    pub const java_interfaces = .{ AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface };
    NULL_ANIMATION: ?*Animation = null,
    // Implements AnimationInterfaceFactoryInterface
    // Implements ProceduralAnimationInterfaceFactoryInterface
    pub var NULL_INDEXED_ANIMATION_ARRAY: []?*IndexedAnimation = undefined;
    var NULL_INDEXED_ANIMATION_FACTORY: ?*NullIndexedAnimationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_INDEXED_ANIMATION_ARRAY = array_N65670: { const array_N65670_array = allocator.alloc(?*IndexedAnimation, @intCast(0)) catch unreachable; @memset(array_N65670_array, null); break :array_N65670 array_N65670_array; };
        NULL_INDEXED_ANIMATION_FACTORY = NullIndexedAnimationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_ANIMATION = Inheritance.upcast(?*Animation, NullIndexedAnimationInner.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getFactoryInstance() ?*NullIndexedAnimationFactory {
        return Inheritance.upcast(?*NullIndexedAnimationFactory, NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY);
    }
    

    // throws Exception
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
    pub const NullIndexedAnimationInner = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.animation.NullIndexedAnimationInner";
        base: NullIndexedAnimation = undefined,
        

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

