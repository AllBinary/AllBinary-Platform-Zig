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
// package org.allbinary.game.health

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const HealthBarAnimation = @import("org/allbinary/game/health/HealthBarAnimation.zig").HealthBarAnimation;
const HealthBarThreedAnimation = @import("org/allbinary/game/health/HealthBarThreedAnimation.zig").HealthBarThreedAnimation;

pub const HealthBarAnimationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.HealthBarAnimationInterfaceFactory";
    // Implements AnimationInterfaceFactoryInterface
    // Implements ProceduralAnimationInterfaceFactoryInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstanceByLocation(self: *Self, layerInterface: ?*AllBinaryLayer, location: i32) ?*HealthBarAnimation {
        _ = self;
        return Inheritance.upcast(?*HealthBarAnimation, Inheritance.callStatic(HealthBarThreedAnimation, "create2", .{ layerInterface, location }));
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        _ = animationInterface;
        _ = self;
        return null;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

