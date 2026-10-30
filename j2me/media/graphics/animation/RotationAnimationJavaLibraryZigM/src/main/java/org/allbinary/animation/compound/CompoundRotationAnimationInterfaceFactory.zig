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
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const CompoundAnimationInterfaceFactory = @import("org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.zig").CompoundAnimationInterfaceFactory;
const CompoundRotationAnimation = @import("org/allbinary/animation/compound/CompoundRotationAnimation.zig").CompoundRotationAnimation;

pub const CompoundRotationAnimationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory";
    base: CompoundAnimationInterfaceFactory = undefined,
    

    pub fn create2(basicAnimationInterfaceFactoryInterfaceArray: []?*AnimationInterfaceFactoryInterface, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CompoundAnimationInterfaceFactory, "create2", .{ basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory }).*;
        if (Object.same(animationBehaviorFactory, AnimationBehaviorFactory.getInstance())) {
            _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn createArray(self: *Self, size: i32) []?*Animation {
        _ = self;
        return array_N65912: { const array_N65912_array = allocator.alloc(?*RotationAnimation, @intCast(size)) catch unreachable; @memset(array_N65912_array, null); break :array_N65912 array_N65912_array; };
    }
    

    pub fn createAnimation(self: *Self, animationInterfaceArray: []?*Animation) ?*Animation {
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(CompoundRotationAnimation, "create2", .{ Inheritance.cast([]?*RotationAnimation, animationInterfaceArray), Inheritance.fieldPointer(self, "animationBehaviorFactory").*.?.getOrCreateInstance() }));
    }
};

