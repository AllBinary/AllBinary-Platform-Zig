// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.layer.building

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DamageFloaters = @import("org/allbinary/game/combat/damage/DamageFloaters.zig").DamageFloaters;
const PtsDamageFloaters = @import("org/allbinary/game/combat/damage/PtsDamageFloaters.zig").PtsDamageFloaters;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const HealthBar = @import("org/allbinary/game/health/HealthBar.zig").HealthBar;
const HealthBarTwodAnimation = @import("org/allbinary/game/health/HealthBarTwodAnimation.zig").HealthBarTwodAnimation;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BuildingLayer = @import("org/allbinary/game/layer/building/BuildingLayer.zig").BuildingLayer;

pub const BuildingPropertiesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.building.BuildingPropertiesFactory";
    damageFloatersPaintableInterface: ?*Paintable = null,
    var instance: ?*BuildingPropertiesFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BuildingPropertiesFactory.create();
    }

    fn initFields(this: *Self) void {
        this.damageFloatersPaintableInterface = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BuildingPropertiesFactory {
        return Inheritance.upcast(?*BuildingPropertiesFactory, BuildingPropertiesFactory.instance);
    }
    

    pub fn getEfficiencyPerLevel(self: *Self, buildingLayer: ?*BuildingLayer) i32 {
        _ = self;
        return @divTrunc(10000, Inheritance.receiver(buildingLayer.?, "getMaxLevel").getMaxLevel()) + @rem(10000, Inheritance.receiver(buildingLayer.?, "getMaxLevel").getMaxLevel());
    }
    

    pub fn getDamageFloaters(self: *Self, buildingLayer: ?*BuildingLayer) ?*DamageFloaters {
        var damageFloaters: ?*DamageFloaters = Inheritance.upcast(?*DamageFloaters, DamageFloaters.getInstance());
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.DAMAGE_FLOATERS })) {
            damageFloaters = Inheritance.upcast(@TypeOf(damageFloaters), Inheritance.callStatic(PtsDamageFloaters, "create1", .{ buildingLayer }));
            self.damageFloatersPaintableInterface = Inheritance.upcast(@TypeOf(self.damageFloatersPaintableInterface), damageFloaters);
        } else {
            damageFloaters = DamageFloaters.create();
        }
        return damageFloaters;
    }
    

    // throws Exception
    pub fn getHealthBar(self: *Self, buildingLayer: ?*BuildingLayer) ?*Paintable {
        _ = self;
        var healthBar: ?*Paintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.HEALTH_BARS })) {
            healthBar = Inheritance.upcast(@TypeOf(healthBar), Inheritance.callStatic(HealthBar, "create4", .{ buildingLayer, Inheritance.receiver(buildingLayer.?, "getHealthInterface").getHealthInterface(), Inheritance.callStatic(HealthBarTwodAnimation, "create2", .{ Inheritance.cast(?*AllBinaryLayer, buildingLayer), BasicHudFactory.getInstance().?.BOTTOMLEFT }), -1 }));
        }
        return healthBar;
    }
    

    pub fn getHashtable(self: *Self) ?*ABHashtable {
        _ = self;
        return Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }
    

    pub fn getTrackingEvent(self: *Self, buildingLayer: ?*BuildingLayer) ?*TrackingEvent {
        _ = self;
        return Inheritance.callStatic(TrackingEvent, "create1", .{ buildingLayer });
    }
};

