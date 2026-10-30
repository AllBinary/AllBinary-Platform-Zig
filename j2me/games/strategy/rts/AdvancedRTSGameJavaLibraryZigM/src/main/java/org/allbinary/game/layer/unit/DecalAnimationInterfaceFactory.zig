// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.unit

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGameResources = @import("org/allbinary/game/layer/resources/BasicGameResources.zig").BasicGameResources;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const NullRotationAnimationFactory = @import("org/allbinary/animation/NullRotationAnimationFactory.zig").NullRotationAnimationFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;

pub const DecalAnimationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory";
    var instance: ?*DecalAnimationInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DecalAnimationInterfaceFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*DecalAnimationInterfaceFactory {
        return Inheritance.upcast(?*DecalAnimationInterfaceFactory, DecalAnimationInterfaceFactory.instance);
    }
    

    // throws Exception
    pub fn getAnimationFactory(self: *Self, basicGameResources: ?*BasicGameResources, basicColor: ?*BasicColor) ?*AnimationInterfaceFactoryInterface {
        _ = self;
        var animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface = null;
        if (Object.same(basicColor, BasicColorFactory.getInstance().?.RED)) {
            animationInterfaceFactoryInterface = Inheritance.upcast(@TypeOf(animationInterfaceFactoryInterface), Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ basicGameResources.?.RESOURCE }));
        } else {
            animationInterfaceFactoryInterface = Inheritance.upcast(@TypeOf(animationInterfaceFactoryInterface), NullRotationAnimationFactory.getFactoryInstance());
        }
        return animationInterfaceFactoryInterface;
    }
};

