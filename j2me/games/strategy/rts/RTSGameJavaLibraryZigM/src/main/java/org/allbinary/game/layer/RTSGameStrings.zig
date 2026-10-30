// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const RTSGameStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSGameStrings";
    DRAG_TO_SPOT: ?*String = null,
    NOT_YOURS: ?*String = null,
    NEW_UNIT: ?*String = null,
    NEW_WAYPOINT: ?*String = null,
    BUILDING: ?*String = null,
    UPGRADE: ?*String = null,
    DOWNGRADE: ?*String = null,
    NO_MONEY: ?*String = null,
    SPOT_TAKEN: ?*String = null,
    BUILDING_COLLISION: ?*String = null,
    STRUCTURE_TO_CLOSE: ?*String = null,
    MAP_EDGE: ?*String = null,
    ROAD_COLLISION: ?*String = null,
    SELECT_BUILD_SPOT: ?*String = null,
    BUILD_ON_PATH: ?*String = null,
    DRAGGABLE: ?*String = null,
    var instance: ?*RTSGameStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RTSGameStrings.create();
    }

    fn initFields(this: *Self) void {
        this.DRAG_TO_SPOT = String.literal("Please Drag");
        this.NOT_YOURS = String.literal("Not Yours");
        this.NEW_UNIT = String.literal("New Unit");
        this.NEW_WAYPOINT = String.literal("New Waypoint");
        this.BUILDING = String.literal("Building");
        this.UPGRADE = String.literal("Upgrading");
        this.DOWNGRADE = String.literal("Downgrading");
        this.NO_MONEY = String.literal("Not Enough Money");
        this.SPOT_TAKEN = String.literal("Spot Taken");
        this.BUILDING_COLLISION = String.literal("Building Collision");
        this.STRUCTURE_TO_CLOSE = String.literal("Building To Close");
        this.MAP_EDGE = String.literal("Map Edge");
        this.ROAD_COLLISION = String.literal("Road Collision");
        this.SELECT_BUILD_SPOT = String.literal("Select Build Spot");
        this.BUILD_ON_PATH = String.literal("Not On Path");
        this.DRAGGABLE = String.literal("Draggable");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RTSGameStrings {
        return Inheritance.upcast(?*RTSGameStrings, RTSGameStrings.instance);
    }
};

