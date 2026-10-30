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
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;

pub const NullAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.NullAnimationFactory";
    pub const java_interfaces = .{ AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface };
    NULL_ANIMATION: ?*Animation = null,
    EMPTY_ARRAY: []?*Animation = &.{},
    // Implements AnimationInterfaceFactoryInterface
    // Implements ProceduralAnimationInterfaceFactoryInterface
    pub var NULL_NOT_FOR_USE_ANIMATION_FACTORY: ?*NullAnimationFactory = undefined;
    var NULL_ANIMATION_FACTORY: ?*NullAnimationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_NOT_FOR_USE_ANIMATION_FACTORY = NullAnimationFactory.create();
        NULL_ANIMATION_FACTORY = NullAnimationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_ANIMATION = Animation.create() // Java anonymous class body: implement it as a named type
//         
// 
//         pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
//             _ = graphics;
//             _ = x;
//             _ = y;
//             _ = self;
//         }
;
        this.EMPTY_ARRAY = array_N65895: { const array_N65895_array = allocator.alloc(?*Animation, @intCast(0)) catch unreachable; @memset(array_N65895_array, null); break :array_N65895 array_N65895_array; };
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getFactoryInstance() ?*NullAnimationFactory {
        return Inheritance.upcast(?*NullAnimationFactory, NullAnimationFactory.NULL_ANIMATION_FACTORY);
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

