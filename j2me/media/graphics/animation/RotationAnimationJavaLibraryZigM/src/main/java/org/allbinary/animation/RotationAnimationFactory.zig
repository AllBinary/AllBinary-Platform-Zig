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
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const NullRotationAnimation = @import("org/allbinary/animation/NullRotationAnimation.zig").NullRotationAnimation;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;

pub const RotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.RotationAnimationFactory";
    pub const java_interfaces = .{ AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface };
    totalAngle: i16 = 0,
    angleIncrement: i16 = 0,
    // Implements AnimationInterfaceFactoryInterface
    // Implements ProceduralAnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn createFactory() ?*RotationAnimationFactory {
        const totalAngle: i16 = AngleFactory.getInstance().?.TOTAL_ANGLE;
        return Inheritance.callStatic(RotationAnimationFactory, "create2", .{ totalAngle, @as(i16, @intCast((@divTrunc(totalAngle, Inheritance.receiverOf(GameConfigurationCentral.getInstance().?, "getGameControlFidelity").getGameControlFidelity())))) });
    }
    

    pub fn create2(totalAngle: i16, angleIncrement: i16) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.totalAngle = totalAngle;
        this.angleIncrement = angleIncrement;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(NullRotationAnimation, "createTotalAngle", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), self.totalAngle, AnimationBehavior.getInstance() }));
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        _ = animationInterface;
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(NullRotationAnimation, "createTotalAngle", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ self.angleIncrement }), self.totalAngle, AnimationBehavior.getInstance() }));
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

