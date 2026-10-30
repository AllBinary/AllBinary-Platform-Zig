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
// package org.allbinary.game.layer.building.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BuildingEventListenerInterface = @import("org/allbinary/game/layer/building/event/BuildingEventListenerInterface.zig").BuildingEventListenerInterface;

pub const BuildingEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.building.event.BuildingEventHandler";
    base: BasicEventHandler = undefined,
    var eventHandler: ?*BuildingEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        eventHandler = BuildingEventHandler.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*BuildingEventHandler {
        return Inheritance.upcast(?*BuildingEventHandler, BuildingEventHandler.eventHandler);
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const buildingEventListenerInterface: ?*BuildingEventListenerInterface = Inheritance.upcast(?*BuildingEventListenerInterface, (Inheritance.cast(?*BuildingEventListenerInterface, eventListenerInterface)));
        _ = Inheritance.call(buildingEventListenerInterface.?, "onBuildingEvent", .{ Inheritance.cast(?*RTSLayerEvent, eventObject) });
    }
};

