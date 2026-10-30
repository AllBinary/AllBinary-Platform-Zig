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
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BuildingLayer = @import("org/allbinary/game/layer/building/BuildingLayer.zig").BuildingLayer;
const BuildingPropertiesFactory = @import("org/allbinary/game/layer/building/BuildingPropertiesFactory.zig").BuildingPropertiesFactory;

pub const SimulatedBuildingPropertiesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory";
    base: BuildingPropertiesFactory = undefined,
    var instanceC: ?*SimulatedBuildingPropertiesFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = SimulatedBuildingPropertiesFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BuildingPropertiesFactory.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*SimulatedBuildingPropertiesFactory {
        return Inheritance.upcast(?*SimulatedBuildingPropertiesFactory, SimulatedBuildingPropertiesFactory.instanceC);
    }
    

    pub fn getEfficiencyPerLevel(self: *Self, buildingLayer: ?*BuildingLayer) i32 {
        _ = buildingLayer;
        _ = self;
        return 0;
    }
    

    pub fn getDamageFloaters(self: *Self, buildingLayer: ?*BuildingLayer) ?*DamageFloaters {
        _ = buildingLayer;
        const damageFloaters: ?*DamageFloaters = Inheritance.upcast(?*DamageFloaters, DamageFloaters.getInstance());
        Inheritance.fieldPointer(self, "damageFloatersPaintableInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "damageFloatersPaintableInterface").*), damageFloaters);
        return damageFloaters;
    }
    

    // throws Exception
    pub fn getHealthBar(self: *Self, buildingLayer: ?*BuildingLayer) ?*Paintable {
        _ = buildingLayer;
        _ = self;
        return Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
    }
    

    pub fn getHashtable(self: *Self) ?*ABHashtable {
        _ = self;
        return Inheritance.upcast(?*ABHashtable, StdUtil.getInstance().?.NULL_TABLE);
    }
    

    pub fn getTrackingEvent(self: *Self, buildingLayer: ?*BuildingLayer) ?*TrackingEvent {
        _ = buildingLayer;
        _ = self;
        return Inheritance.callStatic(TrackingEvent, "create1", .{ TrackingEventHandler.getInstance() });
    }
};

