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
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const HealthBar = @import("org/allbinary/game/health/HealthBar.zig").HealthBar;
const HealthBarAnimationInterfaceFactory = @import("org/allbinary/game/health/HealthBarAnimationInterfaceFactory.zig").HealthBarAnimationInterfaceFactory;
const HealthBarTwodAnimation = @import("org/allbinary/game/health/HealthBarTwodAnimation.zig").HealthBarTwodAnimation;

pub const HealthBarFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.HealthBarFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, layerInterface: ?*AllBinaryLayer, healthInterface: ?*Health, location: i32, direction: i32) ?*HealthBar {
        _ = self;
        if (Inheritance.receiverOf(OpenGLFeatureUtil.getInstance().?, "isAnyThreed").isAnyThreed()) {
            const featuredAnimationInterfaceFactoryInterfaceFactory: ?*FeaturedAnimationInterfaceFactoryInterfaceFactory = Inheritance.upcast(?*FeaturedAnimationInterfaceFactoryInterfaceFactory, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance());
            const healthBarAnimationInterfaceFactory: ?*HealthBarAnimationInterfaceFactory = Inheritance.cast(?*HealthBarAnimationInterfaceFactory, Inheritance.call(featuredAnimationInterfaceFactoryInterfaceFactory.?, "get", .{ Health.NAME }));
            return Inheritance.callStatic(HealthBar, "create4", .{ layerInterface, healthInterface, Inheritance.call(healthBarAnimationInterfaceFactory.?, "getInstanceByLocation", .{ layerInterface, location }), direction });
        } else {
            return Inheritance.callStatic(HealthBar, "create4", .{ layerInterface, healthInterface, Inheritance.callStatic(HealthBarTwodAnimation, "create2", .{ layerInterface, location }), direction });
        }
    }
};

