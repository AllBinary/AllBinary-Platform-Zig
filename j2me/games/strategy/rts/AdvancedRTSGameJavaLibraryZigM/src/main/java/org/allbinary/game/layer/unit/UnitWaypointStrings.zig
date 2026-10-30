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
// package org.allbinary.game.layer.unit

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;

pub const UnitWaypointStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.UnitWaypointStrings";
    WANDERING: ?*String = null,
    THINKING: ?*String = null,
    THINKING_ABOUT_TARGET: ?*String = null,
    TARGET: ?*String = null,
    KILL: ?*String = null,
    STOP: ?*String = null,
    WAYPOINT_DESTROYED_SHORT: ?*String = null,
    WAYPOINT_DESTROYED: ?*String = null,
    ALL_VISITED_SHORT: ?*String = null,
    ALL_VISITED: ?*String = null,
    ALREADY_THERE_SHORT: ?*String = null,
    ALREADY_THERE: ?*String = null,
    NEXT_PATH_NODE: ?*String = null,
    var instance: ?*UnitWaypointStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = UnitWaypointStrings.create();
    }

    fn initFields(this: *Self) void {
        this.WANDERING = String.literal("Order?");
        this.THINKING = String.literal("Thinking");
        this.THINKING_ABOUT_TARGET = String.literal("Hmmm");
        this.TARGET = String.literal("Target");
        this.KILL = String.literal("Kill!");
        this.STOP = String.literal("Stop");
        this.WAYPOINT_DESTROYED_SHORT = String.literal("Uh Oh");
        this.WAYPOINT_DESTROYED = String.literal("Waypoint Destroyed");
        this.ALL_VISITED_SHORT = String.literal("Arrived");
        this.ALL_VISITED = String.literal("All Visited");
        this.ALREADY_THERE_SHORT = String.literal("Again?");
        this.ALREADY_THERE = String.literal("Already There");
        this.NEXT_PATH_NODE = Inheritance.upcast(?*String, String.plus(CommonLabels.getInstance().?.NEXT, String.literal(" Path Node")));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*UnitWaypointStrings {
        return Inheritance.upcast(?*UnitWaypointStrings, UnitWaypointStrings.instance);
    }
};

