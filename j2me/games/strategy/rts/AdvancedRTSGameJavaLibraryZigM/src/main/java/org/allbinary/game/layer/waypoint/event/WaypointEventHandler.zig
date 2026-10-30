// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot  
// Generated Code Do Not Modify
// package org.allbinary.game.layer.waypoint.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const WaypointEventListenerInterface = @import("org/allbinary/game/layer/waypoint/event/WaypointEventListenerInterface.zig").WaypointEventListenerInterface;

pub const WaypointEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.event.WaypointEventHandler";
    base: BasicEventHandler = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const waypointEventListenerInterface: ?*WaypointEventListenerInterface = Inheritance.upcast(?*WaypointEventListenerInterface, (Inheritance.cast(?*WaypointEventListenerInterface, eventListenerInterface)));
        _ = Inheritance.call(waypointEventListenerInterface.?, "onWaypointEvent", .{ Inheritance.cast(?*RTSLayerEvent, eventObject) });
    }
};

