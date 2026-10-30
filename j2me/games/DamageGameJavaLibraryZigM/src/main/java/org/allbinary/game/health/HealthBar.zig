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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const HealthBarAnimation = @import("org/allbinary/game/health/HealthBarAnimation.zig").HealthBarAnimation;
const HealthInterface = @import("org/allbinary/game/health/HealthInterface.zig").HealthInterface;
const HealthListenerInterface = @import("org/allbinary/game/health/HealthListenerInterface.zig").HealthListenerInterface;

pub const HealthBar = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.HealthBar";
    pub const java_interfaces = .{ HealthListenerInterface };
    base: Paintable = undefined,
    animationInterface: ?*HealthBarAnimation = null,
    healthInterface: ?*HealthInterface = null,
    allbinaryLayer: ?*AllBinaryLayer = null,
    // Implements HealthListenerInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create4(layerInterface: ?*AllBinaryLayer, healthInterface: ?*Health, animationInterface: ?*HealthBarAnimation, direction: i32) *Self {
        _ = direction;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.allbinaryLayer = layerInterface;
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        _ = Inheritance.call(this.healthInterface.?, "addListener", .{ this });
        _ = this.onHealthChange();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onHealthChange(self: *Self) void {
        _ = Inheritance.call(self.animationInterface.?, "onHealthChange", .{ (divide_N66050: { const left_N66050 = self.healthInterface.?.getHealth() * Inheritance.receiver(self.allbinaryLayer.?, "getWidth").getWidth(); const right_N66050 = self.healthInterface.?.getMaxHealth(); break :divide_N66050 if (comptime @typeInfo(@TypeOf(left_N66050)) == .int or @TypeOf(left_N66050) == comptime_int) @divTrunc(left_N66050, right_N66050) else left_N66050 / right_N66050; }) });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, 0, 0 });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.animationInterface.?, "paintThreedXYZ", .{ graphics, 0, 0, 0 });
    }
};

