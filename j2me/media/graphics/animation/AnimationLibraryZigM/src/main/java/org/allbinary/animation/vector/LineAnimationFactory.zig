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
// package org.allbinary.animation.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const LineAnimation = @import("org/allbinary/animation/vector/LineAnimation.zig").LineAnimation;

pub const LineAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.vector.LineAnimationFactory";
    basicColor: ?*BasicColor = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basicColor = basicColor;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(LineAnimation, "create1", .{ self.basicColor }));
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

