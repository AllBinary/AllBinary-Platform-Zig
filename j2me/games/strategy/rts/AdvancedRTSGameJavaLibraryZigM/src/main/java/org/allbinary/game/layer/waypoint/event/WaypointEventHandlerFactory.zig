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
// package org.allbinary.game.layer.waypoint.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const WaypointEventHandler = @import("org/allbinary/game/layer/waypoint/event/WaypointEventHandler.zig").WaypointEventHandler;

pub const WaypointEventHandlerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory";
    var eventHandlerArray: []?*WaypointEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        eventHandlerArray = @constCast(&[_]?*WaypointEventHandler{ WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create(), WaypointEventHandler.create() })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(groupInterface: ?*Group) ?*WaypointEventHandler {
        return Inheritance.upcast(?*WaypointEventHandler, WaypointEventHandlerFactory.eventHandlerArray[@intCast(@as(i32, @intCast(groupInterface.?.getGroupId())))]);
    }
    

    pub fn removeAll() void {
        {
            var index: i32 = @as(i32, @intCast(WaypointEventHandlerFactory.eventHandlerArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.receiverOf(WaypointEventHandlerFactory.eventHandlerArray[@intCast(index)].?, "removeAllListeners").removeAllListeners();
            }
        }
    }
};

