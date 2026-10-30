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
// package org.allbinary.game.ag.life

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const HealthBarAnimation = @import("org/allbinary/game/health/HealthBarAnimation.zig").HealthBarAnimation;
const HealthBarTwodAnimation = @import("org/allbinary/game/health/HealthBarTwodAnimation.zig").HealthBarTwodAnimation;
const HealthInterface = @import("org/allbinary/game/health/HealthInterface.zig").HealthInterface;
const HealthListenerInterface = @import("org/allbinary/game/health/HealthListenerInterface.zig").HealthListenerInterface;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Life = @import("org/allbinary/game/ag/life/Life.zig").Life;

pub const HealthIncludingLifeBar = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.life.HealthIncludingLifeBar";
    base: Paintable = undefined,
    animationInterface: ?*HealthBarAnimation = null,
    life: ?*Life = null,
    healthInterface: ?*HealthInterface = null,
    allbinaryLayer: ?*AllBinaryLayer = null,
    // Implements HealthListenerInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    // throws Exception
    pub fn createHealthIncludingLifeBar(layerInterface: ?*AllBinaryLayer, life: ?*Life, healthInterface: ?*Health, location: i32, direction: i32) ?*HealthIncludingLifeBar {
        return Inheritance.callStatic(HealthIncludingLifeBar, "create5", .{ layerInterface, life, healthInterface, Inheritance.callStatic(HealthBarTwodAnimation, "create2", .{ layerInterface, location }), direction });
    }
    

    pub fn create5(layerInterface: ?*AllBinaryLayer, life: ?*Life, healthInterface: ?*Health, animationInterface: ?*HealthBarAnimation, direction: i32) *Self {
        _ = direction;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.allbinaryLayer = layerInterface;
        this.animationInterface = animationInterface;
        this.life = life;
        this.healthInterface = healthInterface;
        _ = Inheritance.call(this.healthInterface.?, "addListener", .{ this });
        _ = this.onHealthChange();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onHealthChange(self: *Self) void {
        _ = Inheritance.call(self.animationInterface.?, "onHealthChange", .{ (divide_N66561: { const left_N66561 = ((self.healthInterface.?.getHealth() + (self.healthInterface.?.getMaxHealth() * self.life.?.get())) * Inheritance.receiver(self.allbinaryLayer.?, "getWidth").getWidth()); const right_N66561 = (self.healthInterface.?.getMaxHealth() + (self.healthInterface.?.getMaxHealth() * self.life.?.getStartLives())); break :divide_N66561 if (comptime @typeInfo(@TypeOf(left_N66561)) == .int or @TypeOf(left_N66561) == comptime_int) @divTrunc(left_N66561, right_N66561) else left_N66561 / right_N66561; }) });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, 0, 0 });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.animationInterface.?, "paintThreedXYZ", .{ graphics, 0, 0, 0 });
    }
};

