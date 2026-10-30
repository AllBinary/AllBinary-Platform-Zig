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
// package org.allbinary.animation.compound

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const CompoundAnimationInterfaceFactory = @import("org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.zig").CompoundAnimationInterfaceFactory;
const SimultaneousCompoundIndexedAnimation = @import("org/allbinary/animation/compound/SimultaneousCompoundIndexedAnimation.zig").SimultaneousCompoundIndexedAnimation;

pub const SimultaneousCompoundIndexedAnimationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimationInterfaceFactory";
    base: CompoundAnimationInterfaceFactory = undefined,
    

    pub fn create2(basicAnimationInterfaceFactoryInterfaceArray: []?*AnimationInterfaceFactoryInterface, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CompoundAnimationInterfaceFactory, "create2", .{ basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn createArray(self: *Self, size: i32) []?*Animation {
        _ = self;
        return array_N65817: { const array_N65817_array = allocator.alloc(?*Animation, @intCast(size)) catch unreachable; @memset(array_N65817_array, null); break :array_N65817 array_N65817_array; };
    }
    

    pub fn createAnimation(self: *Self, animationArray: []?*Animation) ?*Animation {
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(SimultaneousCompoundIndexedAnimation, "create2", .{ animationArray, Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
    }
};

