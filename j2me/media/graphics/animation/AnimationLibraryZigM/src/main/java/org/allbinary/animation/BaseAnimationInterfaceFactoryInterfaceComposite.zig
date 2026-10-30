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
const BasicAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.zig").BasicAnimationInterfaceFactoryInterface;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;

pub const BaseAnimationInterfaceFactoryInterfaceComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite";
    pub const java_interfaces = .{ AnimationInterfaceFactoryInterface };
    basicAnimationInterfaceFactoryInterfaceArray: []?*BasicAnimationInterfaceFactoryInterface = &.{},
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(basicAnimationInterfaceFactoryInterfaceArray: []?*BasicAnimationInterfaceFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        _ = self;
        return Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    pub fn getBasicAnimationInterfaceFactoryInterfaceArray(self: *Self) []?*BasicAnimationInterfaceFactoryInterface {
        return self.basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    pub fn setBasicAnimationInterfaceFactoryInterfaceArray(self: *Self, basicAnimationInterfaceFactoryInterfaceArray: []?*BasicAnimationInterfaceFactoryInterface) void {
        self.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
};

