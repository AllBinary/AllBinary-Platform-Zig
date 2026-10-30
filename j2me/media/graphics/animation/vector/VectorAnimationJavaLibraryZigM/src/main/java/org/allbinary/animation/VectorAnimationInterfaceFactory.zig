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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const VectorAnimation = @import("org/allbinary/animation/VectorAnimation.zig").VectorAnimation;

pub const VectorAnimationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorAnimationInterfaceFactory";
    pub const java_interfaces = .{ AnimationInterfaceFactoryInterface };
    currentPoints: [][][]i32 = &.{},
    basicColor: ?*BasicColor = null,
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
        
    }
    

    pub fn create3(currentPoints: [][][]i32, basicColor: ?*BasicColor, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.currentPoints = currentPoints;
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        this.animationBehaviorFactory = animationBehaviorFactory;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(VectorAnimation, "create3", .{ self.currentPoints, self.getBasicColorP(), self.animationBehaviorFactory.?.getOrCreateInstance() }));
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

